# Skills Reference — Book Genesis V3

Book Genesis V3 contains **9 skills** organized into a 6-phase pipeline. Each skill is a standalone specialist that also works as part of the orchestrated pipeline.

---

## Pipeline Skills (used in sequence)

### 1. book-genesis (Master Orchestrator)

**Phase:** All phases
**Command:** `/book-genesis`

The brain of the system. Coordinates all other skills through 6 phases with hard quality gates. Implements the Genesis Score V2 with FLOOR system, anti-inflation protocol, configurable stylistic device, and progressive structure enforcement.

**Key features:**
- 6-phase pipeline: Research -> Foundation -> Writing -> Evaluation -> Revision -> Delivery
- Genesis Score V2: 7 dimensions, FLOOR system (weakest = final score)
- Anti-inflation: evidence required, +0.5 ceiling per iteration
- Progressive structure: each chapter builds causally on the previous
- Configurable stylistic device (surreal, worldbuilding, epistolary, humor, market, or custom)
- Research protocol for non-fiction with data integration guidelines
- 4-type revision taxonomy (structural -> connective -> prose -> factual)

---

### 2. narrative-foundation (Characters + Emotion + Theme)

**Phase:** 2 (Foundation)
**Command:** `/narrative-foundation`

Consolidates what was previously three separate skills (character-forge, emotion-engineer, theme-weaver) into one deep, integrated foundation builder.

**Part 1 — Characters:** 7 layers of depth per character (wound, lie, conscious desire, unconscious need, contradictions, voice, transformation arc). Includes non-fiction/memoir adaptation and relationship mapping.

**Part 1B — Voice Construction:** Method for building authentic voice from author samples or literary references. Includes drift detection protocol.

**Part 2 — Pacing:** Chapter/paragraph/sentence rhythm management. Genre-specific density guidelines. Alternation between scene and reflection.

**Part 3 — Emotional Curve:** 7 primary emotions mapped chapter by chapter. High-impact beat identification with setup requirements. Investment management protocol.

**Part 4 — Theme:** Theme as QUESTION (never answer). 4 levels of weaving (macro, medium, micro, nano). Symbol/motif system. Anti-patterns for theme declaration.

---

### 3. prose-craft (Opening + Dialogue + Anti-IA)

**Phase:** 3 (Writing)
**Command:** `/prose-craft`

Consolidates hook-crafter and dialogue-master into one skill, plus adds the anti-IA protocol and non-fiction prose guidelines.

**Part 1 — Opening:** 5-layer hook system (first line, first paragraph, first page, first scene, first chapter). 4 diagnostic tests.

**Part 2 — Dialogue:** 4 functions of dialogue. Subtexto techniques. Voice differentiation per character. Action beats over dialogue tags.

**Part 3 — Anti-IA Protocol:** 10 detectable AI patterns with specific elimination techniques. Per-chapter verification checklist. This is mandatory during writing, not a post-production step.

**Part 4 — Non-Fiction Prose:** Data as narrative (not reports). Reported speech techniques. Argumentation that flows without reading like a thesis.

**Part 5 — Line Quality:** What editors highlight positively (specificity, concrete images, rhythm variation, strong verbs) and negatively (cliches, filler, abstraction, passive voice, adjective excess).

---

### 4. beta-reader (3 Non-Convergent Profiles)

**Phase:** 4 (Evaluation)
**Command:** `/beta-reader`

Simulates 3 radically different readers evaluating the manuscript. Replaces the previous 5-profile system (beta-reader-sim) with fewer but deeper, non-convergent profiles.

**The Devourer:** Reads fast, feels everything, zero tolerance for dragging. Reports where they would stop reading.

**The Critic:** Literary analysis lens. Hunts for originality, thematic depth, prose quality, coherence. Compares with published references.

**The Hostile:** Did not want to read this. Actively seeks flaws, manipulation, questionable data, AI smell. Their respect is the highest validation.

**Cross-diagnosis:** 3/3 agree = critical problem. 2/3 agree = real problem. 1/1 = investigate. Hostile praises = exceptional moment.

---

### 5. production-prep (Proofreading + Formatting)

**Phase:** 6 (Delivery)
**Command:** `/production-prep`

Consolidates proofreader and book-formatter into one final-stage skill.

**Part 1 — Proofreading:** 8 error categories (spelling, punctuation, agreement, repetition, factual inconsistencies, verb tense, internal formatting, invisible errors). 3-pass methodology.

**Part 2 — Formatting:** Complete guidelines for ebook (EPUB structure, typography, metadata, KDP keywords) and print (page size, margins, typography, headers, PDF specs). Includes final checklists for both formats.

---

### 6. editorial-package (Synopses + Query + Cover)

**Phase:** 6 (Delivery)
**Command:** `/editorial-package`

Consolidates synopsis-writer, cover-brief, and query-letter into one coherent market-facing package.

**Part 1 — Synopses:** 3 formats — logline (~25 words), cover synopsis (~100 words, never reveals ending), editorial synopsis (~300 words, reveals everything for agents/editors). Genre-specific adaptation guidelines.

**Part 2 — Query Letter:** 5 mandatory elements (hook, compact synopsis, comp titles, author credentials, practical data). Personalization protocol per agent/publisher. Max 400 words.

**Part 3 — Cover Brief:** Visual positioning analysis, emotional concept, color palette, main visual element, typography, reference covers, AI generation prompt structure, technical specs for ebook and print.

---

## Support Skills (used across phases or independently)

### 7. manuscript-manager (State Engine)

**Phase:** All phases
**Command:** `/manuscript-manager`

The persistent memory of the project. Manages PROJECT_STATE.yaml with CHECK-IN/CHECK-OUT protocols, decision logging, handoff tracking, and session recovery.

**CHECK-IN:** Reads state, reports to user, verifies consistency, asks for direction.
**CHECK-OUT:** Updates all state, lists what was done, alerts on stale handoffs.
**Decision Log:** Every significant decision recorded with date, justification, and reversibility.
**Handoffs:** Inter-skill task tracking with priority and age alerts.
**File Convention:** Standardized project structure (manuscrito/, fundacao/, capitulos/, pesquisa/, avaliacoes/, editorial/, export/).

---

### 8. series-architect (Series Bible)

**Phase:** Independent (use before Vol. 2+)
**Command:** `/series-architect`

Builds and maintains the series bible for multi-volume projects. Ensures each volume works standalone AND as part of the series.

**Delivers:** Series premise, protagonist transformation arc across all volumes, volume map (per-volume conflicts, resolutions, hooks), canonical worldbuilding, character management across volumes, inter-volume hook design, consistency checklist, canonical glossary.

---

### 9. bestseller-orchestrator (Alternative Pipeline)

**Phase:** Independent (alternative to book-genesis)
**Command:** `/bestseller-orchestrator`

An alternative, faster orchestrator that transforms a basic idea into a commercially strong book. Supports autopilot mode (zero questions, assume defaults) or guided mode (max 3 questions).

**Note:** This skill references V1 skill names in its internal documentation. In practice, Claude will use the V3 equivalents (narrative-foundation instead of character-forge + theme-weaver + emotion-engineer, etc.).

---

## Skill Consolidation Map (V1 -> V3)

| V1 Skills | V3 Equivalent |
|-----------|---------------|
| character-forge + theme-weaver + emotion-engineer | **narrative-foundation** |
| hook-crafter + dialogue-master | **prose-craft** |
| synopsis-writer + cover-brief + query-letter | **editorial-package** |
| proofreader + book-formatter | **production-prep** |
| beta-reader-sim | **beta-reader** |
| book-genesis | **book-genesis** (upgraded) |
| manuscript-manager | **manuscript-manager** (upgraded) |
| series-architect | **series-architect** (kept as-is) |
| bestseller-orchestrator | **bestseller-orchestrator** (kept as-is) |
