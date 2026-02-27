# Architecture

Book Genesis is an 8-phase pipeline that transforms a one-sentence idea into a publishable manuscript. This document explains how the phases connect, what each produces, and where the quality gates live.

## Pipeline Overview

```
IDEA (1 sentence)
    │
    ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE 0 — Research & Reference Bible                            │
│                                                                 │
│ Input:  User's idea + genre + language                          │
│ Actions: WebSearch for top books, awards, trends                │
│ Output: artefatos/01-reference-bible.md                         │
│ Gate:   Reference Bible saved with comp titles + market gaps    │
└────────────────────────────────┬────────────────────────────────┘
                                 │
                                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE 1 — Narrative Foundation                                  │
│                                                                 │
│ Produces:                                                       │
│   artefatos/02-personagens.md  — Characters with psych depth    │
│   artefatos/03-tema.md         — Theme at 4 depth levels        │
│   artefatos/05-mapa-emocional.md — Emotional map per chapter    │
│                                                                 │
│ Skills used: character-forge, theme-weaver, emotion-engineer    │
│ Gate: All 3 artifacts saved                                     │
└────────────────────────────────┬────────────────────────────────┘
                                 │
                                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE 2 — Architecture                                          │
│                                                                 │
│ Produces:                                                       │
│   artefatos/04-outline.md     — Chapter-by-chapter outline      │
│   artefatos/06-hook-cap01.md  — First line/page/chapter hook    │
│                                                                 │
│ Skills used: hook-crafter                                       │
│ Gate: Outline + hook strategy saved                             │
└────────────────────────────────┬────────────────────────────────┘
                                 │
                                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE 3 — Writing                                               │
│                                                                 │
│ Produces: manuscrito/cap-01.md through cap-XX.md                │
│                                                                 │
│ Every chapter fulfills 5 simultaneous obligations:              │
│   1. Plot — advance at least one plot point                     │
│   2. Character — reveal, deepen, or transform                  │
│   3. Emotion — shift the reader's emotional state              │
│   4. Theme — echo the central theme without preaching          │
│   5. Surreal — manifest the chosen register organically        │
│                                                                 │
│ Skills used: dialogue-master                                    │
│ Gates at: 25%, 50%, 75%, 100% of manuscript                    │
└────────────────────────────────┬────────────────────────────────┘
                                 │
                                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE 4 — Evaluation (Genesis Score)                            │
│                                                                 │
│ Input:  Complete manuscript                                     │
│ Output: artefatos/07-genesis-score.md                           │
│                                                                 │
│ 10 dimensions × weights = weighted average                      │
│ Pass: avg > 9.0 AND no dimension < 8.0                         │
│                                                                 │
│ Gate: PASS → Phase 6  |  FAIL → Phase 5                        │
└───────────┬─────────────────────────────┬──────────────────────┘
            │ PASS                        │ FAIL
            ▼                             ▼
┌───────────────────┐   ┌─────────────────────────────────────────┐
│ PHASE 6 — Polish  │   │ PHASE 5 — Directed Revision             │
│ (see below)       │   │                                         │
└───────────────────┘   │ Order: weakest dimension first           │
                        │ Each cycle: diagnose → intervene → re-score│
                        │ Max 5 iterations before escalating       │
                        │ Output: artefatos/08-revision-log.md     │
                        │                                         │
                        │ Loop back to Phase 4 after each cycle   │
                        └─────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│ PHASE 6 — Polish                                                │
│                                                                 │
│ Produces: artefatos/09-beta-notes.md                            │
│                                                                 │
│ 6.1 — 5 Simulated Beta Readers                                 │
│   Genre Devourer | Literary Critic | Casual Reader              │
│   Commercial Editor | Hostile Reader                            │
│                                                                 │
│ 6.2 — 3-Pass Proofreading                                      │
│   Pass 1: Read aloud  |  Pass 2: Category search               │
│   Pass 3: Invisible errors                                      │
│                                                                 │
│ 6.3 — Final Emotional Map Verification                          │
│                                                                 │
│ Skills used: beta-reader-sim, proofreader                       │
│ Gate: Issues fixed before advancing                             │
└────────────────────────────────┬────────────────────────────────┘
                                 │
                                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE 7 — Editorial Package                                     │
│                                                                 │
│ Produces:                                                       │
│   artefatos/10-sinopses.md      — 3 synopsis formats            │
│   artefatos/11-cover-brief.md   — Cover design brief + AI prompt│
│   artefatos/12-formatacao.md    — Ebook/print formatting guide  │
│   artefatos/13-query-letter.md  — Query letter for agents       │
│                                                                 │
│ Skills used: synopsis-writer, cover-brief, book-formatter,      │
│              query-letter                                       │
│ Gate: All 4 artifacts saved → PROJECT COMPLETE                  │
└─────────────────────────────────────────────────────────────────┘
```

## Project Directory Structure

Every Book Genesis project creates this directory tree:

```
your-book/
├── PROJECT_STATE.yaml          ← Persistent state (resume across sessions)
├── artefatos/
│   ├── 00-brief.md             ← Initial brief + assumptions
│   ├── 01-reference-bible.md   ← Market research + comp titles
│   ├── 02-personagens.md       ← Character profiles
│   ├── 03-tema.md              ← Theme at 4 levels + symbols
│   ├── 04-outline.md           ← Chapter outline + tension map
│   ├── 05-mapa-emocional.md    ← Emotional curve per chapter
│   ├── 06-hook-cap01.md        ← Hook strategy
│   ├── 07-genesis-score.md     ← Scoring history
│   ├── 08-revision-log.md      ← Revision tracking
│   ├── 09-beta-notes.md        ← Beta reader simulation
│   ├── 10-sinopses.md          ← Logline + cover + editorial
│   ├── 11-cover-brief.md       ← Cover design brief
│   ├── 12-formatacao.md        ← Formatting guide
│   └── 13-query-letter.md      ← Query letter
└── manuscrito/
    ├── cap-01.md
    ├── cap-02.md
    └── ...
```

## Skill Delegation

When the orchestrator (`book-genesis`) reaches a phase that has a dedicated skill installed, it delegates to that skill instead of using its inline logic. This gives each phase deeper, more nuanced behavior.

| Phase | Component | Dedicated Skill |
|-------|-----------|----------------|
| 1 | Characters | `character-forge` |
| 1 | Theme | `theme-weaver` |
| 1 | Emotional map | `emotion-engineer` |
| 2 | Hook | `hook-crafter` |
| 3 | Dialogue | `dialogue-master` |
| 6 | Beta readers | `beta-reader-sim` |
| 6 | Proofreading | `proofreader` |
| 7 | Synopses | `synopsis-writer` |
| 7 | Cover brief | `cover-brief` |
| 7 | Formatting | `book-formatter` |
| 7 | Query letter | `query-letter` |
| * | State management | `manuscript-manager` |

If a dedicated skill is **not** installed, `book-genesis` uses its own inline logic (which covers the essentials of each sub-skill). Installing the dedicated skills unlocks more depth.

## Anti-Drift Rules

1. **Every canonical change** (name, world rule, motivation, timeline) must be registered in `PROJECT_STATE.yaml` and propagated to all affected artifacts.
2. **No phase advances without its gate passing.**
3. **The surreal is never gratuitous.** Every surreal element must serve at least one of the 5 obligations.
4. **No emotion adjectives in prose.** "Fear spread" → never. Show fear through action, physical sensation, altered perception.
5. **Every session starts by reading `PROJECT_STATE.yaml`.** If it doesn't exist, create it. If it exists, honor what came before.
