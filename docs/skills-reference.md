# Skills Reference

Complete reference for all 15 skills in Book Genesis. Each skill can be used **standalone** (invoke it directly) or **orchestrated** by the `book-genesis` pipeline.

## Orchestrators

### book-genesis
**Invocation:** `/book-genesis`
**Lines:** ~1,000 | **Phase:** All

The master orchestrator. Chains all 15 skills into an 8-phase pipeline with quality gates. Takes a one-sentence idea and produces a complete manuscript with editorial package.

**Key commands:**
| Command | What it does |
|---------|-------------|
| `/genesis` | Start the full pipeline from Phase 0 |
| `/capitulo N` | Write chapter N with 5 obligations |
| `/score` | Run Genesis Score evaluation |
| `/revisar` | Start directed revision loop |
| `/beta` | Simulate 5 beta readers |
| `/pacote` | Generate editorial package (Phase 7) |
| `/status` | Show current project state |
| `/continuar` | Resume from PROJECT_STATE.yaml |

### bestseller-orchestrator
**Invocation:** `/bestseller-orchestrator`
**Lines:** ~390 | **Phase:** All

Alternative orchestrator with a more streamlined, pitch-to-book approach. Less granular than `book-genesis` but faster for simpler projects.

---

## Foundation Skills (Phase 1)

### character-forge
**Invocation:** `/character-forge`
**Lines:** ~210

Builds characters with deep psychological profiles:
- **Central wound** — what happened, when, with whom, and the (partially wrong) conclusion
- **Conscious desire vs. unconscious need** — what they think they want vs. what they actually need
- **The lie they believe** — one sentence that distorts their worldview
- **3-5 internal contradictions** — what makes them human
- **Unique voice** — speech patterns, what they never say directly, humor type
- **Transformation arc** — beginning, turning point, end
- **Surreal filter** — how the chosen register affects their subjective experience

### theme-weaver
**Invocation:** `/theme-weaver`
**Lines:** ~390

Ensures the central theme is woven into every scene across 4 depth levels:
- Level 1 (Surface): The plot question
- Level 2 (Personal): The protagonist's question
- Level 3 (Universal): The reader's takeaway
- Level 4 (Philosophical): The unanswerable question

Also defines subtemes and recurring symbols.

### emotion-engineer
**Invocation:** `/emotion-engineer`
**Lines:** ~300

Maps and designs the reader's emotional curve chapter by chapter:
- Emotional state at start and end of each chapter
- Emotional function (what the scene does for the reader)
- Primary trigger (event/revelation that causes the shift)
- Abandonment risk assessment
- Surreal element per chapter

---

## Architecture Skills (Phase 2)

### hook-crafter
**Invocation:** `/hook-crafter`
**Lines:** ~330

Engineers irresistible openings using 5 hook types:
| Type | Description |
|------|------------|
| A — Impossible Statement | Violates reader expectations in a way only reading resolves |
| B — Mid-Movement | Starts in the middle of action. No setup. |
| C — Voice Hook | The first line is about WHO tells, not what happens |
| D — Revelation Promise | The reader senses a secret |
| E — Surreal Image | An impossible image that anchors the register from sentence one |

Includes 4 diagnostic tests for the chosen opening.

---

## Writing Skills (Phase 3)

### dialogue-master
**Invocation:** `/dialogue-master`
**Lines:** ~310

Writes and revises dialogue with strict rules:
- Every line of dialogue serves **at least 2 of 4 functions**: reveals character, advances plot, creates conflict, establishes subtext
- If you cover the names, you should be able to identify who's speaking by voice alone
- Zero exposition disguised as dialogue
- Stage directions show emotion through action, never adjectives

---

## Polish Skills (Phase 6)

### beta-reader-sim
**Invocation:** `/beta-reader-sim`
**Lines:** ~340

Simulates 5 distinct reader profiles:

| Profile | Reads/Year | Central Question |
|---------|-----------|-----------------|
| Genre Devourer | 80+ | "Does this give me something others in the genre don't?" |
| Literary Critic | 40+ | "Does this have something to say — and say it uniquely?" |
| Casual Reader | 5-10 | "Could I put this down or did I have to keep going?" |
| Commercial Editor | 200 proposals | "Could I sell this book — and why?" |
| Hostile Reader | varies | "Did this win me over despite my resistance?" |

Produces per-reader reports + consensus analysis (positive, negative, productive divergence).

### proofreader
**Invocation:** `/proofreader`
**Lines:** ~240

3-pass proofreading:
1. **Read aloud** — the ear catches what the eye normalizes
2. **Category search** — spelling, punctuation, agreement, repetition, inconsistencies, verb tense, formatting
3. **Invisible errors** — swapped letters forming valid words, double spaces, spaces before punctuation

---

## Editorial Package Skills (Phase 7)

### synopsis-writer
**Invocation:** `/synopsis-writer`
**Lines:** ~360

Writes commercial synopses in 3 formats:
- **Logline** (1-2 sentences): protagonist + goal + obstacle + stakes
- **Cover paragraph** (80-120 words): anchoring → rupture → central conflict → hook
- **Editorial synopsis** (250-400 words): full plot including ending (for professionals)

### cover-brief
**Invocation:** `/cover-brief`
**Lines:** ~370

Creates a complete cover design brief:
- Genre visual analysis (dominant palettes, compositions, typography)
- Emotional concept
- Color palette (60/30/10 rule)
- Main visual element
- Typography recommendations
- 3-5 reference covers
- What to avoid
- AI generation prompt (Midjourney/DALL-E ready)

### book-formatter
**Invocation:** `/book-formatter`
**Lines:** ~430

Formatting guide for ebook and print:
- **Ebook:** structure, paragraph styles, metadata, dialogue conventions
- **Print (POD):** page size, margins, font, chapter layout
- Generates build-ready structure with frontmatter and backmatter

### query-letter
**Invocation:** `/query-letter`
**Lines:** ~440

Writes query letters with 5 required elements:
1. Opening hook (comp titles or direct pitch)
2. Book paragraph (100-150 words adapted synopsis)
3. Book data (title, genre, word count, standalone/series, audience)
4. Agent personalization placeholder
5. Author bio

Total: 250-400 words. Never more than 1 page.

---

## Utility Skills

### series-architect
**Invocation:** `/series-architect`
**Lines:** ~420

Builds the series bible:
- Macro arc across books
- Worldbuilding consistency
- Character threading and evolution
- Plot seeds planted in early books
- Standalone satisfaction per volume

### manuscript-manager
**Invocation:** `/manuscript-manager`
**Lines:** ~380

Orchestrates manuscript state between sessions:
- Reads and writes `PROJECT_STATE.yaml`
- Tracks chapter status, word counts, scores
- Detects inconsistencies
- Manages handoffs between skills
