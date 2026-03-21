# Entity Tracker — V4.1 Design Spec

**Date:** 2026-03-21
**Status:** Approved
**Scope:** New skill (`entity-tracker`) + upgrade to existing skill (`continuity-guardian`)

---

## Problem

The continuity-guardian (V4) rebuilds its tracking databases from scratch every time it runs. These databases (character facts, timeline, knowledge graph, plot threads) exist only as markdown appendices in evaluation reports — they are not structured, not persistent, and not queryable.

V4's Rule 10 says "append to tracking databases, don't rebuild" — but there is no persistent store to append to. The databases live in the evaluation report's markdown appendix and are lost between sessions. In practice, this means:
- Every batch check re-reads the entire manuscript to reconstruct state
- The Phase 2.7 run and Phase 5.5 run share no accumulated knowledge
- Other skills (prose-craft, dialogue-polish, book-editor) cannot access entity state
- Coherence scoring remains subjective — no deterministic validation

The most common continuity error readers catch — "how does this character KNOW that?" — requires a persistent knowledge graph to prevent. The current system detects it post-hoc instead of preventing it structurally.

## Solution

Two changes:

1. **New skill: `entity-tracker`** — builds and maintains `ENTITY_STATE.yaml`, a structured, persistent, queryable state file for all manuscript entities (characters, locations, timeline, objects, organizations, world rules, knowledge graph).

2. **Upgraded skill: `continuity-guardian`** — reads `ENTITY_STATE.yaml` as input instead of rebuilding databases from scratch. Gains a 6th audit (YAML vs text divergence). Outputs suggested YAML patches alongside the markdown report.

### Design principles

- **Separation of concerns:** entity-tracker builds state, continuity-guardian audits state, book-editor fixes state. No skill judges its own work.
- **Conflict detection, not resolution:** entity-tracker flags contradictions as `UNRESOLVED`. It never decides which value is correct.
- **Source-mandatory:** every entry in `ENTITY_STATE.yaml` has a `source` field (chapter + paragraph). No source = no entry.
- **Incremental:** entity-tracker tracks which chapters have been processed. It never reprocesses. It appends and updates.
- **Non-breaking:** all integrations are optional. Skills that don't read the YAML continue working as before.

---

## ENTITY_STATE.yaml Schema

```yaml
meta:
  version: "1.0"
  last_updated: "2026-03-21"
  last_updated_by: "entity-tracker"
  chapters_tracked: [1, 2, 3, 4, 5]

characters:
  character_slug:                    # kebab-case derived from canonical name
    canonical_name: "Full Name"
    aliases: ["Nickname", "Title Name"]
    physical:
      eye_color: { value: "brown", source: "ch-02:p14" }
      hair: { value: "black, short", source: "ch-01:p3" }
      height: { value: "tall", source: "ch-03:p22" }
      age: { value: 34, at_chapter: 1, birth_year: 1991, source: "ch-01:p1" }
      distinguishing:
        - { value: "chin scar", source: "ch-04:p8" }
    traits:
      - { trait: "left-handed", source: "ch-02:p19", mutable: false }
      - { trait: "fear of heights", source: "ch-01:p31", mutable: true }
    voice_markers:
      ref: "foundation/voice-dna.md#character"
    relationships:
      other_character_slug:
        type: "relationship type"
        established: "ch-01:p5"
        current_status: "status"
    location_log:
      - { chapter: 1, location: "City", scene: "place", travel_noted: false }
    knowledge:
      - fact: "what the character knows"
        learned: "ch-05:p12"
        method: "told_by:character | overheard | witnessed | discovered | inferred"
    arc_notes: "brief arc summary for context"

locations:
  location_slug:
    canonical_name: "Location Name"
    aliases: ["Alias"]
    facts:
      - { fact: "detail about this location", source: "ch-01:p2" }
    distances:
      - { to: "other_location_slug", value: "~6h by car", source: "ch-03:p5" }

timeline:
  - chapter: 1
    time: "Monday morning"
    season: "winter"
    year: 2024
    note: ""

objects:
  object_slug:
    introduced: "ch-02:p33"
    description: "what the object is"
    status: "chekhov_open"     # chekhov_open | chekhov_resolved | texture
    last_mentioned: "ch-04:p19"
    resolution: null            # filled when/if paid off

world_rules:
  - { rule: "rule description", source: "ch-01:p15" }

organizations:
  org_slug:
    canonical_name: "Organization Name"
    aliases: ["Alias"]
    facts:
      - { fact: "detail", source: "ch-02:p3" }
```

### Conflict representation

When the entity-tracker finds a contradicting fact during UPDATE mode, it does NOT overwrite. It adds a `conflict` field:

```yaml
eye_color:
  value: "brown"
  source: "ch-02:p14"
  conflict:
    value: "blue"
    source: "ch-09:p7"
    flag: "UNRESOLVED"
```

Conflicts remain `UNRESOLVED` until the continuity-guardian audits them and the book-editor fixes the manuscript. On next UPDATE run, entity-tracker re-extracts the conflicting field from the affected chapters. If only one value remains in the text (the other was edited out), the conflict is auto-resolved: the surviving value becomes canonical and the `conflict` field is removed. If both values still exist, the conflict stays `UNRESOLVED`.

---

## Skill: entity-tracker

### Modes

**BUILD mode** (Phase 2.7, after foundation approval):

1. Read `foundation.md` — extract characters, relationships, physical traits, established knowledge, world rules
2. Read `outline.md` — extract locations, timeline skeleton, key objects, organizations
3. Generate `ENTITY_STATE.yaml` from scratch
4. All entries sourced to foundation or outline
5. Set `meta.chapters_tracked: []`

**UPDATE mode** (Phase 3.7 after chapter batches, Phase 5.5 after revision):

1. Read `ENTITY_STATE.yaml`
2. Identify new chapters (not in `meta.chapters_tracked`)
3. For each new chapter, run 5 extraction passes:
   - **PASS 1: CHARACTER SCAN** — grep known names + aliases, extract 5-line context, parse for physical descriptions, trait demonstrations, knowledge acquisition, location
   - **PASS 2: TEMPORAL SCAN** — grep temporal markers (days, dates, relative time, seasons, time-of-day), build timeline entry
   - **PASS 3: ENTITY SCAN** — grep for new named entities not in YAML, determine if new entity or alias of existing
   - **PASS 4: OBJECT SCAN** — update `last_mentioned` for tracked objects, identify new objects with narrative emphasis
   - **PASS 5: KNOWLEDGE FLOW** — for each scene: who is present? For each revelation: who learns what, by what method?
4. Merge into YAML (append new, flag conflicts, never overwrite)
5. Update `meta.chapters_tracked` and `meta.last_updated`

### Rules

1. Never audit — that is continuity-guardian's job
2. Never write prose — that is prose-craft's job
3. Never resolve conflicts — flag them, hand off
4. Never evaluate quality — no scores, no opinions
5. Never modify chapter files — read-only on manuscript, write-only on YAML
6. Every entry requires a source. No source, no entry.
7. Slug generation: lowercase, hyphens, no accents (`marcos-silva`, `sao-paulo`, `fathers-revolver`)
8. When uncertain if an entity is new or an alias, err toward flagging as potential alias with a `needs_review: true` field

---

## Skill: continuity-guardian (V5 upgrade)

### Changes from V4

1. **Database construction replaced by YAML read.** The instruction "Build the four tracking databases" (Rule 6 in V4) becomes "Read `ENTITY_STATE.yaml`". The databases already exist.

2. **New Audit 6: YAML vs Text Divergence.** Compare what the YAML states against what the chapter text states. Entity-tracker flags contradictions as `conflict: UNRESOLVED`. The guardian validates which conflicts are real errors vs intentional arc changes.

3. **UNRESOLVED conflicts as priority input.** Before running the 5 standard audits, the guardian checks `ENTITY_STATE.yaml` for any `flag: "UNRESOLVED"`. These become automatic findings (CRITICAL or WARNING depending on type).

4. **Output includes YAML patches.** In addition to the markdown report, the guardian generates a `suggested_patches` section:
   ```yaml
   suggested_patches:
     - entity: "marcos_silva.physical.eye_color"
       action: "keep_original"   # or "update"
       reason: "ch-09:p7 is narrator error, ch-02 is the establishment"
   ```

5. **Batch mode is faster.** No re-reading old chapters to rebuild databases. Reads YAML (seconds) + new chapters only.

### What stays the same

- All 5 original audits (character consistency, timeline validation, information flow, world rules, plot threads)
- Output format (CRITICAL / WARNING / MINOR findings with evidence)
- Batch / full-manuscript / post-revision modes
- All 10 rules (adjusted: Rule 6 "Build databases FIRST" becomes "Read ENTITY_STATE.yaml FIRST")

---

## Pipeline Integration (V5)

```
Phase 1:    RESEARCH ---------> /book-researcher
Phase 1.5:  READER PERSONAS --> /reader-persona
Phase 2:    FOUNDATION -------> /narrative-foundation
Phase 2.5:  VOICE DNA --------> /voice-fingerprint
   >>> CHECKPOINT 1: User approves foundation <<<
Phase 2.7:  ENTITY TRACKING --> /entity-tracker (BUILD)         [NEW]
Phase 2.8:  CONTINUITY -------> /continuity-guardian (AUDIT)    [UPGRADED]
Phase 3:    WRITING ----------> /prose-craft
Phase 3.1:  DIALOGUE POLISH --> /dialogue-polish
Phase 3.2:  HOOK CRAFT -------> /hook-craft
Phase 3.5:  DISRUPTION -------> /chaos-engine
Phase 3.7:  ENTITY UPDATE ----> /entity-tracker (UPDATE)        [NEW]
Phase 3.8:  MECH PREPROCESS --> /mechanical-preprocess
Phase 4:    EVALUATION -------> /beta-reader
Phase 4.5:  QUALITY GATE -----> /quality-gate
   >>> CHECKPOINT 2: User approves manuscript <<<
Phase 5:    REVISION ---------> /book-editor
Phase 5.5:  ENTITY UPDATE ----> /entity-tracker (UPDATE)        [NEW]
Phase 5.6:  CONTINUITY -------> /continuity-guardian (FINAL)    [UPGRADED]
Phase 6:    DELIVERY ---------> /editorial-package + /production-prep
   >>> CHECKPOINT 3: Book delivered <<<
```

### Cross-skill consumption (optional, non-breaking)

| Skill | How it uses ENTITY_STATE.yaml |
|-------|-------------------------------|
| prose-craft | Before writing dialogue, checks `character.knowledge` — character cannot reference what they don't know |
| dialogue-polish | Validates character voice markers match `voice_markers.ref` |
| book-editor | Reads `suggested_patches` from guardian before editing. Confirms conflict resolved after edit |
| chaos-engine | Uses `traits` to inject coherent chaos (fear of heights + rooftop scene) |
| hook-craft | Queries `objects` with `chekhov_open` to craft hooks that advance payoffs |
| beta-reader | References YAML to validate coherence score with concrete data instead of subjective impression |
| series-architect | Book 1 YAML feeds book 2 tracking — cross-volume continuity |

---

## Implementation scope

| Item | Type | Effort |
|------|------|--------|
| `entity-tracker` SKILL.md | New file | ~400-500 lines |
| `continuity-guardian` SKILL.md | Edit existing | ~50 lines changed |
| `book-genesis` SKILL.md | Edit existing | Add phases 2.7, 3.7, 5.5 |
| `book-auto` SKILL.md | Edit existing | Add phases 2.7, 3.7, 5.5 |
| `README.md` | Edit existing | Update skill count, pipeline diagram, changelog |
| `docs/changelog.md` | Edit existing | V5 entry |
| `docs/skills-reference.md` | Edit existing | Add entity-tracker |

---

## Success criteria

1. `ENTITY_STATE.yaml` is generated correctly from foundation + outline (BUILD mode)
2. YAML updates incrementally after chapter batches without reprocessing (UPDATE mode)
3. Contradictions between chapters are flagged as `UNRESOLVED` conflicts in YAML
4. Continuity-guardian reads YAML and produces findings faster than V4 (no full re-read)
5. No breaking changes — all existing skills work without modification
6. Knowledge graph correctly tracks who knows what, preventing "how does she know that?" errors
