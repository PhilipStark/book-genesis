# Architecture — Book Genesis V3

Book Genesis V3 is a 6-phase pipeline that transforms a one-sentence idea into a publishable manuscript. This document explains how the phases connect, what each produces, and where the quality gates live.

## Pipeline Overview

```
IDEA (1 sentence)
    |
    v
+-------------------------------------------------------------------+
| PHASE 1 — Research                                                 |
|                                                                    |
| Input:  User idea + genre + target audience                        |
| Actions: WebSearch for top books, identify market gaps, comp titles |
| Output: Research report with comp titles, market gap, word count   |
| Gate:   User approves direction before advancing                   |
+------------------------------------+------------------------------+
                                     |
                                     v
+-------------------------------------------------------------------+
| PHASE 2 — Foundation                                               |
|                                                                    |
| Skill:  narrative-foundation                                       |
| Produces:                                                          |
|   - Characters with 7 layers of depth                              |
|   - Emotional curve chapter by chapter                             |
|   - Theme as question + 4 levels of weaving                        |
|   - Voice guide (from author samples or references)                |
|   - Stylistic device configuration (if any)                        |
|   - Chapter-by-chapter outline with progressive structure          |
|                                                                    |
| Gate: User approves foundation + outline before writing            |
| Loop-back: If writing reveals foundation needs change, return here |
+------------------------------------+------------------------------+
                                     |
                                     v
+-------------------------------------------------------------------+
| PHASE 3 — Writing                                                  |
|                                                                    |
| Skills: prose-craft (opening, dialogue, anti-IA)                   |
|         manuscript-manager (state tracking)                        |
| Process:                                                           |
|   - Write chapter by chapter, in order                             |
|   - Each chapter: 5 obligations (voice, substance, emotion,        |
|     theme, device) + 6th obligation: anti-IA check                 |
|   - Progressive structure enforced (each builds on previous)       |
|   - Connectors between chapters mandatory                          |
|   - Word count per chapter within planned range (+/- 15%)          |
|                                                                    |
| Gate: Each chapter passes anti-IA check before advancing           |
| Loop-backs: Outline change -> Phase 2. Research gap -> Phase 1     |
+------------------------------------+------------------------------+
                                     |
                                     v
+-------------------------------------------------------------------+
| PHASE 4 — Evaluation                                               |
|                                                                    |
| Skills: Genesis Score V2 (built into book-genesis)                 |
|         beta-reader (3 profiles)                                   |
| Process:                                                           |
|   - Run Genesis Score on full manuscript (7 dimensions)            |
|   - Run beta-reader (Devourer, Critic, Hostile)                    |
|   - Cross-reference: Score weak + readers confirm = real problem   |
|   - Progressive evaluation (per part, not just final)              |
|   - Deliberate sampling (3-5 specific excerpts per dimension)      |
|   - Evidence-based scoring (chapter + excerpt cited)               |
|                                                                    |
| Output: Score per dimension, floor, top 3 weaknesses, top 3       |
|         strengths                                                  |
| Gate: Floor >= 8.0 to advance. Recommended >= 8.5 for submission  |
| Loop-back: Floor < 8.0 -> Phase 5 (Revision) -> return here       |
+------------------------------------+------------------------------+
                                     |
                                     v (if floor < 8.0)
+-------------------------------------------------------------------+
| PHASE 5 — Revision                                                 |
|                                                                    |
| Skills: prose-craft (for prose issues)                             |
|         narrative-foundation (for structural issues)               |
| Process:                                                           |
|   1. Classify each weakness by taxonomy:                           |
|      Type 1 — Structural (highest priority)                        |
|      Type 2 — Connective                                           |
|      Type 3 — Prose                                                |
|      Type 4 — Factual/Punctual (lowest priority)                   |
|   2. Execute in order (structural first, punctual last)            |
|   3. Verify strengths not degraded by corrections                  |
|   4. Max 3 revision cycles per iteration                           |
|                                                                    |
| Loop-back: Always returns to Phase 4 for re-evaluation             |
| Escalation: 3 cycles without floor improvement -> Phase 2          |
+------------------------------------+------------------------------+
                                     |
                                     v (when floor >= 8.0)
+-------------------------------------------------------------------+
| PHASE 6 — Delivery                                                 |
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
|   - Final PROJECT_STATE.yaml update                                |
|                                                                    |
| Output: Manuscript + editorial package + formatted files           |
+-------------------------------------------------------------------+
```

## State Management

The `manuscript-manager` skill operates across ALL phases via PROJECT_STATE.yaml:

- **CHECK-IN** at the start of every session: reads state, reports progress, verifies consistency
- **CHECK-OUT** at the end of every session: updates state, logs decisions, manages handoffs
- **Decision Log**: every significant decision recorded with justification and reversibility
- **Handoff Tracking**: inter-skill tasks with priority and staleness alerts (>2 sessions)
- **Session Recovery**: if context is lost, PROJECT_STATE.yaml contains everything needed to resume

## Anti-Inflation Protocol

The Genesis Score V2 includes built-in protections against LLM score inflation:

1. Every score requires a textual citation (no citation = invalid)
2. Maximum +0.5 improvement per iteration per dimension
3. Scores >= 9.0 require comparison with published comp titles
4. When one dimension improves, adjacent dimensions are re-checked
5. The FLOOR mechanism forces honest assessment (weakest = final)

## File Structure

Every Book Genesis project follows this convention:

```
manuscrito/
  PROJECT_STATE.yaml          # Source of truth (manuscript-manager)
  fundacao/
    personagens.md            # Character sheets (7 layers)
    curva-emocional.md        # Emotional map chapter by chapter
    tema.md                   # Theme as question + 4 weaving levels
    guia-de-voz.md            # Vocabulary, rhythm, tics, references
    outline.md                # Chapter-by-chapter outline
  capitulos/
    cap-01.md
    cap-02.md
    ...
  pesquisa/
    comp-titles.md            # Comparable books + analysis
    dados-por-capitulo.md     # Sources, data, statistics
    mercado.md                # Niche analysis, market gap
  avaliacoes/
    genesis-score-v1.md       # First full evaluation
    genesis-score-v2.md       # Re-evaluation after revision
    beta-reader-v1.md         # First beta reading
    ...
  editorial/
    logline.md
    sinopse-capa.md
    sinopse-editorial.md
    query-letter.md
    cover-brief.md
  export/
    manuscrito-final.md       # Complete text in order
    ...
```
