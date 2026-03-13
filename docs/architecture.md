# Architecture -- Book Genesis V4

Book Genesis V4 is a 7-phase pipeline that transforms a one-sentence idea into a commercially viable, publishable manuscript. V4 was built from the ground up after a 5-genre stress test (SYSTEM-ANALYSIS.md) identified 9 structural problems in V2 that no amount of prompt refinement could fix. Every architectural change in V4 traces back to a specific failure in that analysis.

---

## Pipeline Overview

```
IDEA (1 sentence)
    |
    v
+-------------------------------------------------------------------+
| PHASE 1 -- Research                                                |
|                                                                    |
| Skill:  book-researcher (NEW in V4)                               |
| Input:  User idea + genre + target audience                       |
| Actions:                                                           |
|   - WebSearch for top 10 books in niche (last 5 years)            |
|   - Identify market gaps and white space                           |
|   - Define 3-5 comp titles with positioning analysis               |
|   - Extract bestseller DNA (prose patterns, pacing, hooks)         |
|   - Estimate target word count by genre conventions                |
|   - Pull 3-5 comp title PASSAGES for evaluator benchmarking        |
| Output: Research report + bestseller-dna.md + comp passages        |
| Gate:   User approves direction before advancing                   |
+------------------------------------+------------------------------+
                                     |
                                     v
+-------------------------------------------------------------------+
| PHASE 2 -- Foundation                                              |
|                                                                    |
| Skill:  narrative-foundation                                       |
| Produces:                                                          |
|   - Characters with 7 layers + CHAOS PROFILES (NEW)               |
|     (irrelevant obsessions, cognitive distortions,                 |
|      unprompted memories, voice-under-pressure)                    |
|   - Emotional ANCHORS per chapter (not numerical curves)           |
|   - Emotional SURPRISES per chapter (the wrong emotion)            |
|   - Theme as question + 4 levels of weaving                        |
|   - Voice guide with voice bank (10-15 samples)                    |
|     INCLUDING 3+ samples of voice FAILING under pressure           |
|   - Engagement type ranking (primary/secondary/tertiary)           |
|   - Re-read architecture (details that gain meaning after ending)  |
|   - Cultural vocabulary (branded terms)                            |
|   - Stylistic device configuration (if any)                        |
|   - Chapter-by-chapter outline with:                               |
|     - Structural approach (1 of 8 types, no consecutive repeats)   |
|     - Opening strategy (for Ch. 1: voice bomb, in medias res, etc.)|
|     - Value shift (positive <-> negative)                          |
|     - Chapter-ending hook type                                     |
|                                                                    |
| Gate: User approves foundation + outline before writing            |
| Loop-back: If writing reveals foundation needs change, return here |
+------------------------------------+------------------------------+
                                     |
                                     v
+-------------------------------------------------------------------+
| PHASE 3 -- Writing                                                 |
|                                                                    |
| Skill:  prose-craft (Writer)                                       |
|         manuscript-manager (state tracking)                        |
| Process:                                                           |
|   - VOICE INHABITATION before each chapter:                        |
|     200-300 word freewrite AS the character (discarded)             |
|   - Write chapter following 6 flexible obligations:                |
|     1. Voice (non-negotiable, must CHANGE under pressure)          |
|     2. Substance (30-40% texture details, no thematic echo chamber)|
|     3. Emotional Anchor (specific image/moment, not intensity #)   |
|     4. Theme (allowed to RECEDE in some chapters)                  |
|     5. Device (if applicable)                                      |
|     6. Pacing (value shift, chapter hook, speed variation)          |
|   - CHARACTER CHAOS mandatory per chapter:                         |
|     irrelevant thought, cognitive distortion, unprompted memory,    |
|     failed emotional management                                    |
|   - Anti-AI Protocol: 20 patterns (not 10) internalized BEFORE     |
|     writing, with genre-adjusted thresholds                        |
|   - 1 deliberately ugly sentence per chapter                       |
|   - THE IMPULSE INSTRUCTION: follow unplanned pulls for 2-3        |
|     paragraphs, keep if better                                     |
|   - Structural diversity enforced (8 types, no consecutive repeat) |
|   - Reading speed design (acceleration + deceleration passages)    |
|   - Scene transition variation (5 types)                           |
|   - Exposition disguises (5 techniques)                            |
|   - Dialogue craft (interruptions, repetition, silence, "said")    |
|                                                                    |
| Output: Chapter + writer self-report (chapter-N-report.md)         |
| Gate: Anti-AI scan + self-report before advancing                  |
| Loop-backs: Outline change -> Phase 2. Research gap -> Phase 1     |
+------------------------------------+------------------------------+
                                     |
                                     v
+-------------------------------------------------------------------+
| PHASE 3.5 -- Disruption (NEW in V4)                               |
|                                                                    |
| Skill:  chaos-engine (Disruptor)                                   |
| Purpose: Break the chapter's predictability BEFORE evaluation      |
| Actions:                                                           |
|   - Move a scene to an unexpected position                         |
|   - Delete the most expected paragraph, assess if chapter improves |
|   - Insert genuinely irrelevant detail                             |
|   - Break one moment of emotional management (let character lose   |
|     control without narrating it)                                  |
|   - Remove one explanatory clause from a simile (leave it raw)     |
|   - Challenge structural defaults                                  |
|                                                                    |
| This agent introduces WILDNESS into a system that defaults to      |
| control. It reads the writer's self-report and targets the areas   |
| where the writer played it safe.                                   |
|                                                                    |
| Output: Disrupted chapter + disruption report                      |
| Gate: Writer reviews disruptions (can reject individual changes)   |
+------------------------------------+------------------------------+
                                     |
                                     v
+-------------------------------------------------------------------+
| PHASE 4 -- Evaluation                                              |
|                                                                    |
| Skills: Genesis Score V3.7 (built into book-genesis)               |
|         beta-reader (4 profiles: Devourer, Critic, Hostile,        |
|           + CASUAL READER -- NEW in V4)                            |
| Process:                                                           |
|   - Run Genesis Score on manuscript (7 dimensions, genre-adjusted) |
|   - Run beta-reader with 4 profiles including Casual Reader        |
|   - THE CASUAL READER GATE (NEW):                                  |
|     "Would a person who picks this up at an airport give it 10     |
|     pages?" If no, the chapter fails regardless of craft scores.   |
|   - "Would You Remember This Tomorrow?" test                       |
|   - Cross-reference: Score weak + readers confirm = real problem   |
|   - Progressive evaluation (per part, not just final)              |
|   - Comp title passage comparison (from Phase 1 research)          |
|   - CVI-Launch calculation for submission readiness                |
|   - Pattern #11 hard check (explanatory extensions)                |
|                                                                    |
| Output: Score per dimension, floor, CVI-Launch, CVI-Legacy,        |
|         top weaknesses/strengths, revision priority                |
| Gate: Floor >= 8.0 to advance to revision or delivery              |
|       CVI-Launch >= 7.0 for submission readiness                   |
| Loop-back: Floor < 8.0 -> Phase 5 -> return here                  |
+------------------------------------+------------------------------+
                                     |
                                     v (if floor < 8.0)
+-------------------------------------------------------------------+
| PHASE 5 -- Revision                                                |
|                                                                    |
| Skill:  book-editor (NEW in V4)                                    |
|         prose-craft (for prose issues)                              |
|         narrative-foundation (for structural issues)               |
| Process:                                                           |
|   1. Classify each weakness by taxonomy:                           |
|      Type 1 -- Structural (highest priority)                       |
|      Type 2 -- Connective                                          |
|      Type 3 -- Prose                                               |
|      Type 4 -- Factual/Punctual (lowest priority)                  |
|   2. Execute in order (structural first, punctual last)            |
|   3. Genesis Score governs REVISION PRIORITY                       |
|      (weakest dimension gets attention first)                      |
|   4. Verify strengths not degraded by corrections                  |
|   5. Max 3 revision cycles per iteration                           |
|                                                                    |
| Loop-back: Always returns to Phase 4 for re-evaluation             |
| Escalation: 3 cycles without floor improvement -> Phase 2          |
+------------------------------------+------------------------------+
                                     |
                                     v (when floor >= 8.0)
+-------------------------------------------------------------------+
| PHASE 6 -- Delivery                                                |
|                                                                    |
| Skills: editorial-package, production-prep, manuscript-manager     |
| Produces:                                                          |
|   - Logline (1 sentence)                                           |
|   - Cover synopsis (100 words)                                     |
|   - Editorial synopsis (300 words, reveals ending)                 |
|   - Query letter (personalized)                                    |
|   - Cover brief (with AI generation prompts)                       |
|   - Final proofreading (8 categories, 3 passes)                    |
|   - Formatting for ebook and/or print                              |
|   - CVI-Launch assessment for submission readiness                 |
|   - Final PROJECT_STATE.yaml update                                |
|                                                                    |
| Gate: CVI-Launch >= 7.0 for editorial submission                   |
| Output: Manuscript + editorial package + formatted files           |
+-------------------------------------------------------------------+
```

---

## The Two Scoring Systems

V4 introduces a critical separation between two measures that V2 conflated:

### Genesis Score -- Governs Revision Priority

The Genesis Score is the craft quality measure. It has 7 dimensions, uses a FLOOR system (score = weakest dimension), and determines what gets revised first.

- If Emotion is 7.0 and Prose is 8.5, Emotion gets revision priority.
- The floor must reach 8.0 before the pipeline can advance to delivery.
- The Genesis Score tells you HOW GOOD the book is.

### CVI (Commercial Viability Index) -- Governs Submission Readiness

CVI is the market measure. It predicts whether the book will sell, not whether it is well-crafted.

- **CVI-Launch** predicts first-year sales. 6 inputs: market timing, comp title freshness, hook strength, platform/audience, pacing score, genre convention compliance.
- **CVI-Legacy** predicts 20-year sales. 5 inputs: re-readability, emotional resonance, shareability, identity effect, cultural vocabulary penetration.

A book can have a Genesis Score of 8.5 (strong craft) but a CVI-Launch of 5.0 (bad market timing, no platform). Or a Genesis Score of 7.5 (decent craft) but a CVI-Launch of 8.0 (perfect market moment, huge audience).

**The Genesis Score tells you to keep revising. The CVI tells you when to stop revising and ship.**

---

## State Management

The `manuscript-manager` skill operates across ALL phases via `STATE.yaml` (renamed from `PROJECT_STATE.yaml` in V4 for brevity):

- **STATE.yaml is the source of truth.** Every agent reads it at the start of work and writes to it at the end.
- **CHECK-IN** at the start of every session: reads state, reports progress, verifies consistency.
- **CHECK-OUT** at the end of every session: updates state, logs decisions, manages handoffs.
- **Decision Log**: every significant decision recorded with justification and reversibility.
- **Handoff Tracking**: inter-skill tasks with priority and staleness alerts (>2 sessions).
- **Session Recovery**: if context is lost, STATE.yaml contains everything needed to resume.
- **Chapter Reports**: each chapter's writer self-report and disruption report are tracked.
- **Score History**: full Genesis Score + CVI history with per-dimension evidence.

---

## Quality Gates

| Gate | Where | Condition | Failure Action |
|------|-------|-----------|----------------|
| Direction Approval | Phase 1 -> 2 | User approves research direction | Revise research |
| Foundation Approval | Phase 2 -> 3 | User approves foundation + outline | Revise foundation |
| Anti-AI Check | Phase 3 (per chapter) | 20-pattern scan passes genre threshold | Revise chapter prose |
| Writer Self-Report | Phase 3 -> 3.5 | Report filed with chaos moments, ugly sentence, anchor | Rewrite chapter |
| Disruption Review | Phase 3.5 -> 4 | Writer reviews disruptions | Accept/reject changes |
| Casual Reader Gate | Phase 4 | "Would an airport reader give this 10 pages?" | Revise hook/pacing |
| Memory Test | Phase 4 | "What would the reader remember tomorrow?" | Strengthen anchor |
| Genesis Floor | Phase 4 -> 5 or 6 | Floor >= 8.0 | Enter revision loop |
| CVI-Launch Gate | Phase 6 | CVI-Launch >= 7.0 | Revise market positioning |

---

## Loop-Back Rules

The pipeline is not linear. These are the sanctioned backward jumps:

| From | To | Trigger |
|------|----|---------|
| Phase 3 (Writing) | Phase 2 (Foundation) | Character evolves beyond outline; outline needs restructuring |
| Phase 3 (Writing) | Phase 1 (Research) | Insufficient data for non-fiction chapter |
| Phase 4 (Evaluation) | Phase 5 (Revision) | Floor < 8.0 |
| Phase 5 (Revision) | Phase 4 (Evaluation) | After every revision cycle (re-evaluate) |
| Phase 5 (Revision) | Phase 2 (Foundation) | 3 revision cycles without floor improvement (structural problem) |
| Phase 6 (Delivery) | Phase 5 (Revision) | CVI-Launch < 7.0 (market positioning issue) |

**Hard rule:** Maximum 3 revision cycles per evaluation round. If the floor does not improve after 3 cycles, the problem is structural -- return to Phase 2.

---

## The Casual Reader Gate

This is V4's most commercially important addition. It was identified as a missing architectural element in the system analysis.

The Casual Reader is not the Devourer (who reads fast and feels everything), the Critic (who analyzes), or the Hostile (who attacks). The Casual Reader is the person who picks up a book at an airport, reads 10 pages, and decides based on vibes. Not craft. Vibes.

The Casual Reader does not care about:
- Thematic depth
- Prose quality
- Character psychology
- Anti-AI compliance

The Casual Reader cares about:
- "Am I curious?"
- "Do I like this person's voice?"
- "Is something happening?"
- "Do I want to know what happens next?"

If the Casual Reader would put the book down, the chapter fails -- regardless of its Genesis Score. This gate exists because pacing is the #2 predictor of commercial success, and a book with 7.5 prose + 9.0 pacing outsells 9.0 prose + 7.5 pacing by 10x.

---

## Skill Interaction Map

```
book-genesis (Orchestrator)
    |
    +-- book-researcher -----> Phase 1 (Research)
    |     Outputs: comp titles, market gaps, bestseller-dna.md,
    |              comp title passages for evaluator
    |
    +-- narrative-foundation -> Phase 2 (Foundation)
    |     Outputs: foundation.md, outline.md, voice-bank/
    |     Reads: research report, comp titles
    |
    +-- prose-craft ----------> Phase 3 (Writing)
    |     Outputs: chapter-N.md, chapter-N-report.md
    |     Reads: foundation.md, outline.md, voice-bank/,
    |            previous chapter, bestseller-dna.md
    |
    +-- chaos-engine ---------> Phase 3.5 (Disruption)
    |     Outputs: disrupted chapter, disruption report
    |     Reads: chapter, writer self-report
    |
    +-- beta-reader ----------> Phase 4 (Evaluation)
    |     Outputs: 4-reader report + cross-diagnosis
    |     Reads: chapter or full manuscript
    |
    +-- book-editor ----------> Phase 5 (Revision)
    |     Outputs: revision plan, revised chapters
    |     Reads: evaluation report, Genesis Score, manuscript
    |
    +-- editorial-package ----> Phase 6 (Delivery)
    +-- production-prep ------> Phase 6 (Delivery)
    |
    +-- manuscript-manager ---> ALL PHASES (state tracking)
    +-- series-architect -----> Multi-volume projects
    +-- bestseller-orchestrator -> Quick/autopilot mode
```

---

## File Structure (V4)

```
project/
  STATE.yaml                    # Source of truth
  foundation/
    foundation.md               # Characters, chaos profiles, theme, engagement type
    outline.md                  # Chapter outline with structural approaches
    voice-bank/
      samples.md                # 10-15 voice samples
      voice-under-pressure.md   # 3+ samples of voice failing
      irrelevant-thoughts.md    # Character-specific irrelevant thoughts
  manuscript/
    chapters/
      chapter-01.md
      chapter-01-report.md      # Writer self-report
      chapter-02.md
      chapter-02-report.md
      ...
  research/
    comp-titles.md
    bestseller-dna.md           # Prose rules extracted from genre leaders
    market-analysis.md
    comp-passages/              # Actual passages from comp titles
  evaluations/
    genesis-score-v1.md
    beta-reader-v1.md
    cvi-launch.md
    cvi-legacy.md
    ...
  editorial/
    logline.md
    synopsis-cover.md
    synopsis-editorial.md
    query-letter.md
    cover-brief.md
  export/
    manuscript-final.md
    ...
```
