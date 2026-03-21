# Book Genesis V4.1 — Entity Tracker + Polish Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add persistent entity tracking (ENTITY_STATE.yaml), translate remaining PT skills to English, fix outdated docs, and add multilingual showcase examples.

**Architecture:** New skill (entity-tracker) builds/maintains structured YAML state. Continuity-guardian upgraded to consume it. Three PT-only skills translated to English. FAQ, README, and docs updated to reflect V4.1 accurately. Showcase expanded with Age of Aquarius (EN) and multilingual synopses.

**Tech Stack:** Markdown, YAML. No code dependencies.

**Spec:** `docs/superpowers/specs/2026-03-21-entity-tracker-design.md`

---

## File Map

| Action | File | Responsibility |
|--------|------|---------------|
| Create | `skills/entity-tracker/SKILL.md` | New skill — builds/maintains ENTITY_STATE.yaml |
| Modify | `skills/continuity-guardian/SKILL.md` | Upgrade — consume ENTITY_STATE.yaml, add Audit 6, YAML patches |
| Modify | `skills/manuscript-manager/SKILL.md` | Translate PT → EN |
| Modify | `skills/editorial-package/SKILL.md` | Translate PT → EN |
| Modify | `skills/production-prep/SKILL.md` | Translate PT → EN |
| Modify | `agents/book-orchestrator.md` | Language-adaptive checkpoints, add entity-tracker phases |
| Modify | `skills/book-genesis/SKILL.md` | Add phases 2.7→entity-tracker, 3.7, 5.5 |
| Modify | `skills/book-auto/SKILL.md` | Reference new phases |
| Modify | `README.md` | Version badge V4.1, skill count 21, pipeline diagram |
| Modify | `docs/faq.md` | Fix skill count (12→21), add V4.1 info |
| Modify | `docs/skills-reference.md` | Add entity-tracker entry, fix consolidation map |
| Modify | `docs/architecture.md` | Add entity-tracker phases |
| Modify | `docs/changelog.md` | V4.1 entry with entity-tracker + translations |
| Create | `examples/age-of-aquarius/genesis-score.md` | EN showcase — score artifacts |
| Create | `examples/age-of-aquarius/outline.md` | EN showcase — chapter outline |
| Create | `examples/age-of-aquarius/synopses.md` | EN showcase — logline + synopses |
| Create | `examples/protocolo-nao-encontrado/synopses-en.md` | EN translation of PT synopses |
| Create | `examples/protocolo-nao-encontrado/synopses-es.md` | ES translation of PT synopses |
| Modify | `SHOWCASE.md` | Add Age of Aquarius + Protocolo Vermelho |
| Modify | `examples/protocolo-nao-encontrado/PROJECT_STATE.yaml` | Translate PT field names to EN (consistency with new schema) |

---

## Parallelization Groups

```
GROUP A (independent, run in parallel):
  Task 1: Write entity-tracker SKILL.md
  Task 2: Translate manuscript-manager
  Task 3: Translate editorial-package
  Task 4: Translate production-prep
  Task 5: Add showcase examples + multilingual synopses

GROUP B (depends on Task 1):
  Task 6: Upgrade continuity-guardian
  Task 7: Update orchestrators (book-genesis, book-auto, book-orchestrator)

GROUP C (depends on Tasks 1-7):
  Task 8: Update all docs (README, FAQ, changelog, skills-reference, architecture)
  Task 9: Final verification pass
```

---

## Task 1: Write entity-tracker SKILL.md

**Files:**
- Create: `skills/entity-tracker/SKILL.md`

- [ ] **Step 1: Write the complete SKILL.md**

Full skill file in English. ~400-500 lines. Must include:
- Frontmatter: `name: entity-tracker`, description in English
- Identity section (what it is, what it's NOT)
- Two modes: BUILD (Phase 2.7) and UPDATE (Phase 3.7, 5.5)
- ENTITY_STATE.yaml schema (from spec)
- Five extraction passes (CHARACTER, TEMPORAL, ENTITY, OBJECT, KNOWLEDGE FLOW)
- Merge logic with conflict detection
- Rules (8 rules from spec)
- Output format
- Integration notes (which skills can consume the YAML)

Reference: spec at `docs/superpowers/specs/2026-03-21-entity-tracker-design.md`

- [ ] **Step 2: Verify SKILL.md**

Read the file back. Check:
- All English, no PT fragments
- Schema matches spec exactly (including fixed `age.source` and `distinguishing` format)
- BUILD and UPDATE modes clearly separated
- Conflict detection logic explicit
- All 5 extraction passes documented
- All 8 rules present
- No references to skills that don't exist

- [ ] **Step 3: Commit**

```bash
git add skills/entity-tracker/SKILL.md
git commit -m "feat: add entity-tracker skill — persistent YAML state for manuscript entities"
```

---

## Task 2: Translate manuscript-manager to English

**Files:**
- Modify: `skills/manuscript-manager/SKILL.md`

- [ ] **Step 1: Read the current PT file completely**

File is ~226 lines, 100% Portuguese. Read the entire file.

- [ ] **Step 2: Rewrite in English**

Translate the entire SKILL.md to English. Key translations:
- `projeto` → `project`, `capitulos` → `chapters`, `fase_atual` → `current_phase`
- `handoffs_pendentes` → `pending_handoffs`, `decisoes` → `decisions`, `sessoes` → `sessions`
- Update the PROJECT_STATE.yaml schema fields to English
- Keep the same structure, commands, and logic
- Slash commands stay the same (`/estado`, `/checkin`, `/checkout` etc.) but descriptions in English

IMPORTANT: The YAML schema field names must change to English. This is a BREAKING CHANGE for existing projects. Add a migration note at the top:
```
> **Migration from V4:** If you have an existing PROJECT_STATE.yaml with Portuguese field names,
> rename: projeto→project, capitulos→chapters, fase_atual→current_phase,
> handoffs_pendentes→pending_handoffs, decisoes→decisions, sessoes→sessions
```

- [ ] **Step 3: Verify no PT remnants**

Grep for common Portuguese words: `você`, `não`, `está`, `capítulo`, `decisão`, `sessão`, `projeto`.
All should return zero matches (except inside migration note).

- [ ] **Step 4: Commit**

```bash
git add skills/manuscript-manager/SKILL.md
git commit -m "feat: translate manuscript-manager skill to English"
```

---

## Task 3: Translate editorial-package to English

**Files:**
- Modify: `skills/editorial-package/SKILL.md`

- [ ] **Step 1: Read the current PT file completely**

- [ ] **Step 2: Rewrite in English**

Translate entirely. Keep structure. Key sections:
- Part 1: Synopses (3 formats) — translate format descriptions AND examples
- Part 2: Query Letter — translate structure and examples
- Part 3: Cover Brief — translate visual direction vocabulary
- Examples should be adapted (keep the same books but describe in English)
- Genre examples: translate all example loglines/synopses

- [ ] **Step 3: Verify no PT remnants**

Same grep check as Task 2.

- [ ] **Step 4: Commit**

```bash
git add skills/editorial-package/SKILL.md
git commit -m "feat: translate editorial-package skill to English"
```

---

## Task 4: Translate production-prep to English

**Files:**
- Modify: `skills/production-prep/SKILL.md`

- [ ] **Step 1: Read the current PT file completely**

- [ ] **Step 2: Rewrite in English**

Translate entirely. Key sections:
- Part 1: Proofreading — 8 error categories, 3-pass methodology
- Part 2: Formatting — EPUB and print guidelines
- Technical proofreading terms must be adapted (Portuguese grammar rules → English grammar rules where applicable, but keep it language-agnostic where possible since the tool works for any language)

NOTE: The proofreading section references Portuguese-specific grammar (acentuação, concordância). Make it language-adaptive: describe the categories generically, note that specific rules depend on manuscript language.

- [ ] **Step 3: Verify no PT remnants**

- [ ] **Step 4: Commit**

```bash
git add skills/production-prep/SKILL.md
git commit -m "feat: translate production-prep skill to English"
```

---

## Task 5: Add showcase examples + multilingual synopses

**Files:**
- Create: `examples/age-of-aquarius/genesis-score.md`
- Create: `examples/age-of-aquarius/outline.md`
- Create: `examples/age-of-aquarius/synopses.md`
- Create: `examples/protocolo-nao-encontrado/synopses-en.md`
- Create: `examples/protocolo-nao-encontrado/synopses-es.md`
- Modify: `SHOWCASE.md`

Source files (local, not in repo):
- `C:/Users/felip/Desktop/livros/era-de-aquario/artefatos/07-genesis-score.md`
- `C:/Users/felip/Desktop/livros/era-de-aquario/artefatos/04-outline.md`
- `C:/Users/felip/Desktop/livros/era-de-aquario/artefatos/10-sinopses.md`
- `C:/Users/felip/Desktop/livros/era-de-aquario/cover.jpeg` (if exists in publicacao/)
- `C:/Users/felip/Desktop/livros/protocolo-vermelho/evaluations/eval-final.md`
- `C:/Users/felip/Desktop/livros/livro-geracao-fodida/` (existing example artifacts)

- [ ] **Step 0: Update example PROJECT_STATE.yaml to English**

Read `examples/protocolo-nao-encontrado/PROJECT_STATE.yaml`. Translate field names to English:
`projeto`→`project`, `capitulos`→`chapters`, `genesis_score.dimensoes`→`genesis_score.dimensions`, etc.
Keep values in their original language (book titles, chapter titles stay in PT — they're content, not schema).

- [ ] **Step 1: Create Age of Aquarius showcase artifacts**

From the source files, create cleaned versions for the repo:
- `genesis-score.md` — Extract the score table and key metrics. Translate any PT sections to EN. Remove internal revision notes.
- `outline.md` — Chapter list with one-line descriptions. EN only.
- `synopses.md` — Logline + back cover + editorial synopsis (already mostly EN in source).

- [ ] **Step 2: Create EN translation of Protocolo Nao Encontrado synopses**

Read `examples/protocolo-nao-encontrado/sinopses.md` from the repo. Translate to English.
Save as `examples/protocolo-nao-encontrado/synopses-en.md`.

- [ ] **Step 3: Create ES translation of Protocolo Nao Encontrado synopses**

Translate the same synopses to Spanish.
Save as `examples/protocolo-nao-encontrado/synopses-es.md`.

- [ ] **Step 4: Update SHOWCASE.md**

Add Age of Aquarius to Hall of Fame:
```markdown
| *Age of Aquarius* | Hermetic Fantasy | 9.16 | @PhilipStark | 97,000 |
```

Add Protocolo Vermelho to Recent Submissions:
```markdown
| *Protocolo Vermelho* | Vigilante Thriller | 8.1 (avg) / 7.5 (floor) | @PhilipStark | 55,000 |
```

Update community stats:
- Total books generated: 3 (documented)
- Best score achieved: 9.16

- [ ] **Step 5: Commit**

```bash
git add examples/ SHOWCASE.md
git commit -m "feat: add Age of Aquarius showcase + multilingual synopses"
```

---

## Task 6: Upgrade continuity-guardian

**Files:**
- Modify: `skills/continuity-guardian/SKILL.md`

- [ ] **Step 1: Read the current file completely**

The file is ~505 lines, already in English.

- [ ] **Step 2: Apply the 5 changes from spec**

1. **Replace database construction with YAML read.** Find Rule 6 ("Build the four tracking databases") → change to "Read `ENTITY_STATE.yaml`". Add instruction: "If ENTITY_STATE.yaml does not exist, fall back to building databases from scratch (V4 behavior)."

2. **Add Audit 6: YAML vs Text Divergence.** After Audit 5 (Plot Thread Tracking), add new section:
   ```
   ### AUDIT 6: ENTITY STATE DIVERGENCE
   Read ENTITY_STATE.yaml. For each entry with a `conflict` field where `flag: "UNRESOLVED"`:
   - Verify both values against the manuscript text
   - Classify as CRITICAL (character attribute contradiction) or WARNING (ambiguous/minor)
   - Check if the conflict is an intentional arc change (cross-reference foundation.md)
   ```

3. **Add UNRESOLVED conflict priority.** In the "Before Auditing" section, add step: "Check ENTITY_STATE.yaml for any `flag: UNRESOLVED` conflicts. These become priority findings before the 5 standard audits."

4. **Add YAML patch output.** In the "Output Format" section, add a `suggested_patches` YAML block after the tracking databases.

5. **Add backward compatibility note.** At the top: "This skill works with or without ENTITY_STATE.yaml. If the YAML exists, it reads structured state. If not, it builds databases from scratch (V4 behavior)."

- [ ] **Step 3: Verify changes**

Read modified file. Check:
- Backward compatibility note present
- Audit 6 properly numbered and formatted
- YAML patch output section added
- Rule 6 updated
- No PT fragments introduced

- [ ] **Step 4: Commit**

```bash
git add skills/continuity-guardian/SKILL.md
git commit -m "feat: upgrade continuity-guardian to consume ENTITY_STATE.yaml"
```

---

## Task 7: Update orchestrators with new phases

**Files:**
- Modify: `skills/book-genesis/SKILL.md`
- Modify: `skills/book-auto/SKILL.md`
- Modify: `agents/book-orchestrator.md`

- [ ] **Step 1: Read all three files**

- [ ] **Step 2: Update book-genesis SKILL.md**

In the pipeline diagram, add:
```
PHASE 2.7:  ENTITY TRACKING --> /entity-tracker (BUILD)         [NEW]
```
Change existing Phase 2.7 to 2.8:
```
PHASE 2.8:  CONTINUITY -------> /continuity-guardian (AUDIT)    [UPGRADED]
```
Add after Phase 3.5:
```
PHASE 3.7:  ENTITY UPDATE ----> /entity-tracker (UPDATE)        [NEW]
```
Change Phase 5.5 to:
```
PHASE 5.5:  ENTITY UPDATE ----> /entity-tracker (UPDATE)        [NEW]
PHASE 5.6:  CONTINUITY -------> /continuity-guardian (FINAL)    [UPGRADED]
```

Update skill count from 20 to 21 wherever referenced.

- [ ] **Step 3: Update book-auto SKILL.md**

Update the numbered pipeline steps to include entity tracking. Minimal change — just add the steps between checkpoint 1 and writing.

- [ ] **Step 4: Update book-orchestrator agent**

1. Add Phase 2.7 entity-tracker dispatch after checkpoint 1
2. Add Phase 3.7 entity-tracker update dispatch after disruption
3. Add Phase 5.5 entity-tracker update before continuity
4. **Make checkpoint messages language-adaptive:**

Replace hardcoded PT:
```
"Aprova a fundação? Posso começar a escrever?"
```
With:
```
Present the foundation summary to the user in the SAME LANGUAGE as the book being written.
Ask for approval before proceeding to writing.
```

Do the same for checkpoints 2 and 3.

- [ ] **Step 5: Commit**

```bash
git add skills/book-genesis/SKILL.md skills/book-auto/SKILL.md agents/book-orchestrator.md
git commit -m "feat: add entity-tracker phases to all orchestrators + language-adaptive checkpoints"
```

---

## Task 8: Update all documentation

**Files:**
- Modify: `README.md`
- Modify: `docs/faq.md`
- Modify: `docs/skills-reference.md`
- Modify: `docs/architecture.md`
- Modify: `docs/changelog.md`

- [ ] **Step 1: Update README.md**

1. Badge: `skills-20` → `skills-21`
2. Badge: `Genesis_Score-V3.7` stays (score version unchanged)
3. ASCII art comment: keep V4 (major version unchanged)
4. First paragraph: "20 specialized AI skills" → "21 specialized AI skills"
5. Pipeline diagram: add entity-tracker phases (2.7, 3.7, 5.5)
6. Skills table: add entity-tracker row
7. Add "What's New in V4.1" section after "What's New in V4" (or update existing):
   - Entity-tracker skill (persistent YAML state)
   - All skills now in English
   - Language-adaptive orchestrator
   - Multilingual showcase examples

- [ ] **Step 2: Update docs/faq.md**

1. "12 custom skills" → "21 custom skills"
2. "a complete literary production pipeline" description — update skill/phase count
3. "V2 to V4" → mention V4.1 additions
4. "skills are written in a mix of Portuguese and English" → "all skills are in English"
5. Add FAQ entry: "What is the entity-tracker?" with brief explanation
6. Update "How long does it take" if needed
7. Cross-check ALL numbers in the document

- [ ] **Step 3: Update docs/skills-reference.md**

1. Header: "20 skills" → "21 skills"
2. Add entity-tracker entry as skill #21 under V4.1 Skills section:
   ```
   ### 21. entity-tracker (Entity State)
   **Phase:** 2.7 (BUILD) + 3.7 / 5.5 (UPDATE)
   **Role:** Builds and maintains ENTITY_STATE.yaml — persistent, structured state for all manuscript entities.
   **Key features:**
   - Two modes: BUILD (from foundation) and UPDATE (incremental after chapter batches)
   - Tracks: characters (physical, traits, knowledge, location), locations, timeline, objects (Chekhov tracking), world rules, organizations
   - Conflict detection without resolution (flags contradictions as UNRESOLVED)
   - Source-mandatory: every entry has chapter:paragraph source
   - Consumed by: continuity-guardian, prose-craft, dialogue-polish, book-editor, chaos-engine
   ```
3. Update consolidation map to show V4→V4.1 progression
4. Update continuity-guardian entry to mention ENTITY_STATE.yaml consumption
5. Add note to prose-craft, dialogue-polish, book-editor, chaos-engine, hook-craft, beta-reader, series-architect entries: "Optionally reads ENTITY_STATE.yaml for entity validation (V4.1+)"

- [ ] **Step 4: Update docs/architecture.md**

Add entity-tracker phase boxes in the pipeline diagram:
- Phase 2.7: ENTITY TRACKING (before continuity)
- Phase 3.7: ENTITY UPDATE (after disruption)
- Phase 5.5: ENTITY UPDATE (before final continuity)
- Note the data flow: entity-tracker writes YAML → continuity-guardian reads YAML

- [ ] **Step 5: Update docs/changelog.md**

Add new entry at top:

```markdown
## V4.1.1 — Entity Tracking + English Standardization (2026-03-21)

### New Skill: entity-tracker
- Builds and maintains `ENTITY_STATE.yaml` — persistent, structured state for manuscript entities
- Two modes: BUILD (from foundation/outline) and UPDATE (incremental after chapter batches)
- Tracks characters (physical facts, traits, knowledge graph, location log), locations, timeline, objects (Chekhov status), world rules, organizations
- Conflict detection: flags contradictions as UNRESOLVED without resolving them
- Source-mandatory: every entry requires chapter:paragraph citation
- Consumed by continuity-guardian, prose-craft, dialogue-polish, book-editor, chaos-engine

### Upgraded: continuity-guardian
- Reads ENTITY_STATE.yaml instead of rebuilding databases from scratch
- New Audit 6: YAML vs Text Divergence — validates UNRESOLVED conflicts
- Outputs suggested YAML patches alongside markdown report
- Backward compatible: falls back to V4 behavior if YAML doesn't exist

### English Standardization
- Translated 3 remaining Portuguese skills to English: manuscript-manager, editorial-package, production-prep
- Book-orchestrator checkpoints now language-adaptive (no hardcoded Portuguese)
- PROJECT_STATE.yaml schema fields now in English (migration note included)

### Documentation
- FAQ updated: fixed skill count (was 12, now 21), added V4.1 information
- README updated: skill count 21, pipeline diagram with entity-tracker phases
- Skills reference updated: entity-tracker entry, consolidation map corrected
- Architecture doc updated: entity-tracker data flow

### Showcase
- Added Age of Aquarius (Hermetic Fantasy, EN, Genesis Score 9.16, 97K words)
- Added Protocolo Vermelho (Vigilante Thriller, PT-BR, Genesis Score 8.1 avg, 55K words)
- Added multilingual synopses (EN, ES) for Protocolo Nao Encontrado
```

- [ ] **Step 6: Commit**

```bash
git add README.md docs/
git commit -m "docs: update all documentation for V4.1 — entity-tracker, English standardization, showcase"
```

---

## Task 9: Final verification pass

- [ ] **Step 1: Grep for Portuguese remnants in modified skills**

```bash
grep -ri "você\|não\|está\|capítulo\|decisão\|sessão\|projeto\|avaliação" skills/manuscript-manager/ skills/editorial-package/ skills/production-prep/ agents/book-orchestrator.md
```

Expected: zero matches (except inside migration notes or example book titles).

- [ ] **Step 2: Verify all files exist**

```bash
ls skills/entity-tracker/SKILL.md
ls examples/age-of-aquarius/genesis-score.md
ls examples/age-of-aquarius/synopses.md
ls examples/protocolo-nao-encontrado/synopses-en.md
ls examples/protocolo-nao-encontrado/synopses-es.md
```

All should exist.

- [ ] **Step 3: Count skills**

```bash
ls -d skills/*/SKILL.md | wc -l
```

Expected: 21

- [ ] **Step 4: Verify README skill count**

```bash
grep "21 specialized\|skills-21\|21 skills" README.md
```

Should find references to 21 skills in badges and text.

- [ ] **Step 5: Verify install script still works**

The install.sh copies `skills/*/SKILL.md` — entity-tracker will be picked up automatically. No script changes needed. Verify:

```bash
grep "for skill_dir" install.sh
```

Confirm it uses wildcard glob, not hardcoded skill list.

- [ ] **Step 6: Update GitHub repo description**

```bash
gh repo edit PhilipStark/book-genesis --description "From one sentence to a publishable book. 21 AI skills for Claude Code that automate the entire book writing pipeline — research, characters, writing, scoring, revision, and editorial package."
```

- [ ] **Step 7: Final commit if any fixes needed**

```bash
git add -A
git commit -m "fix: final verification fixes"
```
