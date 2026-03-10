<p align="center">
  <img src="examples/protocolo-nao-encontrado/cover.jpeg" alt="Protocolo Nao Encontrado — a book written entirely by AI" width="300" />
</p>

<h1 align="center">Book Genesis V3</h1>

<p align="center">
  <strong>From one sentence to a publishable book. Automatically.</strong>
</p>

<p align="center">
  <a href="#quick-start">Quick Start</a> &middot;
  <a href="#the-pipeline">Pipeline</a> &middot;
  <a href="#genesis-score">Genesis Score</a> &middot;
  <a href="#skills-included">Skills</a> &middot;
  <a href="docs/architecture.md">Architecture</a> &middot;
  <a href="docs/faq.md">FAQ</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/skills-9-blue" alt="9 skills" />
  <img src="https://img.shields.io/badge/phases-6-green" alt="6 phases" />
  <img src="https://img.shields.io/badge/license-MIT-yellow" alt="MIT License" />
  <img src="https://img.shields.io/badge/platform-Claude%20Code-purple" alt="Claude Code" />
</p>

---

## The Story

I gave Claude one sentence: *"A millennial who spent 8 years and $15,000 trying to cure his anxiety — and failed."*

What came back was a **60,800-word book** in Portuguese — 13 chapters across three parts, with an introduction and epilogue, complete with Kafkaesque bureaucratic interludes, 50+ real footnotes, simulated beta reader feedback from 3 distinct profiles, a professional cover brief, three synopsis formats, and a query letter ready for publishers.

The book went through **3 scoring iterations**, climbing from 8.70 to **9.04** on the Genesis Score — a 7-dimension evaluation system with a FLOOR mechanism that forces every dimension to be strong. Two full revision cycles expanded the manuscript from 52,000 to 60,800 words, adding sensory scenes, deepening secondary characters, and varying the rhythmic structure of diagnostic chapters.

The EPUB was generated. The cover was created by AI. The book is real.

**This repository contains the system that made it possible** — 9 deep skills for [Claude Code](https://docs.anthropic.com/en/docs/claude-code) that form a complete literary production pipeline, from a one-sentence idea to a publish-ready manuscript.

---

## What is New in V3

V3 is a merger of V1 (15 skills, surrealism-focused, proven with a real 60k word book) and V2 (7 skills, genre-agnostic, better scoring). The result: **fewer skills, deeper expertise, zero redundancy.**

| Feature | V1 | V3 |
|---------|----|----|
| **Skills** | 15 (many overlapping) | 9 (consolidated, deeper) |
| **Phases** | 8 | 6 |
| **Genesis Score** | 10 dimensions, weighted average | 7 dimensions, FLOOR system (weakest = final) |
| **Score pass** | Weighted avg > 9.0 | Floor >= 8.0 (recommended 8.5+) |
| **Anti-inflation** | None | Evidence required, +0.5 ceiling per iteration |
| **Anti-IA protocol** | None | 10 detectable AI patterns eliminated |
| **Stylistic device** | Surrealism required (8 registers) | Configurable per project (surreal, worldbuilding, epistolar, humor, or none) |
| **Structure** | Parallel chapters allowed | Progressive structure enforced (each chapter builds causally) |
| **Manuscript state** | Basic YAML | CHECK-IN/CHECK-OUT protocol, decision log, handoff tracking |
| **Beta readers** | 5 profiles (convergence risk) | 3 non-convergent profiles (Devourer, Critic, Hostile) |

**Key improvements:**
- **Genesis Score FLOOR system** — Your book is as strong as its weakest dimension. No hiding behind averages.
- **Anti-inflation protocol** — Evidence required for every score. Max +0.5 per iteration. Comparison with published references for scores >= 9.0.
- **Anti-IA protocol** — 10 detectable AI writing patterns actively eliminated during writing, not after.
- **Genre-agnostic** — Works for fiction, non-fiction, memoir, thriller, fantasy, or anything else. Surrealism is now an optional stylistic device, not a requirement.
- **Progressive structure** — Every chapter builds causally on the previous. No more parallel chapters arguing the same thesis independently.
- **Consolidated skills** — character-forge + theme-weaver + emotion-engineer merged into narrative-foundation. hook-crafter + dialogue-master merged into prose-craft. synopsis-writer + cover-brief + query-letter merged into editorial-package. proofreader + book-formatter merged into production-prep.

---

## What Is This?

Book Genesis is a set of **9 custom skills** (prompt modules) for Claude Code that work together as a literary production system. Think of it as a book factory with quality gates at every stage.

Each skill is a deep specialist:
- **Narrative Foundation** builds characters with psychological depth, maps emotional curves, and weaves theme as a question (never as an answer)
- **Prose Craft** engineers irresistible openings, writes dialogue with subtext, and eliminates AI-detectable patterns
- **Beta Reader** simulates 3 radically different reader profiles that never converge
- **Genesis Score** evaluates your book across 7 dimensions where the FLOOR (weakest dimension) is the final score

But the real power is in the **orchestrator** — the book-genesis skill — which chains all skills into a 6-phase pipeline with hard quality gates. Nothing advances without passing.

**Key features:**
- Works in **any language** (skills are in Portuguese, but Claude adapts to your language automatically)
- **Genre-agnostic** — configurable stylistic device instead of forced surrealism
- **Genesis Score V2**: 7-dimension FLOOR system with anti-inflation — approval requires floor >= 8.0
- Every decision becomes a **persistent artifact** (YAML state, markdown docs) — nothing stays "just in chat"
- Each skill works **standalone** or **orchestrated** by Book Genesis

---

## The Pipeline

```
 PHASE 1            PHASE 2              PHASE 3
 +----------+      +----------------+   +------------------+
 | RESEARCH |----->|  FOUNDATION    |-->|    WRITING       |
 |          |      |                |   |                  |
 | WebSearch|      | Characters     |   | 5 obligations    |
 | Top books|      | Emotional curve|   | per chapter      |
 | Comp     |      | Theme as ?     |   | Anti-IA check    |
 | titles   |      | Voice guide    |   | Progressive      |
 | Word     |      | Device config  |   | structure        |
 | count    |      | Outline        |   | Chapter-by-      |
 +----------+      +----------------+   | chapter          |
                                        +--------+---------+
                                                 |
 PHASE 6            PHASE 5              PHASE 4 |
 +----------+      +----------------+   +--------v---------+
 | DELIVERY |<-----|   REVISION     |<--|   EVALUATION     |
 |          |      |                |   |                  |
 | Editorial|      | 4-type taxonomy|   | Genesis Score V2 |
 | package  |      | Structural     |   | 7 dimensions     |
 | Logline  |      | first, then    |   | FLOOR system     |
 | Synopses |      | connective,    |   | Anti-inflation   |
 | Query    |      | then prose,    |   | 3 beta readers   |
 | Cover    |      | then factual   |   | Cross-diagnosis  |
 | Format   |      | Max 3 cycles   |   | Gate: floor >=8.0|
 +----------+      +----------------+   +------------------+
```

**Every phase has a gate.** No phase advances without its gate passing. The revision loop (Phases 4-5) continues until the Genesis Score floor hits 8.0+ or the maximum of 3 cycles is reached. Recommended floor for editorial submission: 8.5+.

---

## Genesis Score

The heart of quality control. A **7-dimension FLOOR scoring system** — your book score equals its weakest dimension. No hiding behind averages.

| # | Dimension | What It Measures | How to Evaluate |
|---|-----------|-----------------|-----------------|
| 1 | **Originality** | What this book does that no other did | List 3 unique elements. Cannot list 3? Score <= 7.0 |
| 2 | **Theme** | Depth of the central question | Theme present in >= 80% of chapters without being declared? If yes, >= 8.0 |
| 3 | **Characters** | Dimensionality, contradictions, arc | Each main character has wound + lie + arc? Cover name test — are voices distinguishable? |
| 4 | **Prose & Voice** | Sentence-level quality + recognizable personality + anti-IA | Open 3 random pages. Voice identifiable? Editor-worthy sentences? Passes anti-IA check? |
| 5 | **Pacing & Coherence** | Speed variation + internal consistency | Reader turns the page in >= 80% of chapters? Paragraph sizes vary? No contradictions? |
| 6 | **Emotion** | Real emotional investment | Identify the 3 highest-impact moments. Do they work? Does the reader care before they suffer? |
| 7 | **[Configurable]** | Varies by project | Surreal, Market (default), Worldbuilding, Epistolary, Humor, or custom |

**The score is FLOOR — the lowest score among all 7.** A book with 6 dimensions at 9.0 and one at 7.0 has a score of 7.0. Period. This forces ALL dimensions to be strong.

### Anti-Inflation Protocol

LLMs inflate scores. This protocol fights that:

1. **Evidence required.** Every score needs a textual citation. "Prose 9.0" without citing a specific sentence = invalid score.
2. **+0.5 ceiling per iteration.** If Characters was 7.5, the max after revision is 8.0. Larger jumps require extraordinary evidence.
3. **Reference comparison.** When scoring >= 9.0: "Would a professional editor agree this dimension is at the level of [published comp title]?" If not a confident yes, score <= 8.5.
4. **Cross-check.** When one dimension rises, re-verify adjacent ones. Prose went up? Check if Pacing did not drop.
5. **Floor calibration.** The floor forces honesty — 5 dimensions at 9.0 and one at 7.0 = score 7.0.

### Scale Reference

| Score | Meaning |
|-------|---------|
| 6.0-6.5 | Amateur. Editor rejects. |
| 7.0-7.5 | Competent. Publishable but forgettable. |
| 8.0-8.5 | Strong. Level of a book published by a major house. |
| 9.0-9.5 | Exceptional. Bestseller or award-winning level. |
| 10.0 | Genre reference. Reserved for works that defined categories. |

### Real Example: *Protocolo Nao Encontrado*

The proof-of-concept book went through 3 scoring iterations:

```
Iteration 1 (first draft):     8.70 — FAILED   (weakest: Pacing 8.2)
Iteration 2 (after revision):  8.95 — FAILED   (weakest: Pacing 8.7, Market 8.7)
Iteration 3 (after expansion): 9.04 — PASSED   (weakest: Market 8.9)
```

See the full scoring history in [`examples/protocolo-nao-encontrado/genesis-score.md`](examples/protocolo-nao-encontrado/genesis-score.md).

---

## Quick Start

### Prerequisites

- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code) installed and authenticated
- Claude Pro or Max subscription (for extended context)

### Installation (one command)

**macOS / Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/PhilipStark/book-genesis/main/install.sh | bash
```

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/PhilipStark/book-genesis/main/install.ps1 | iex
```

**Manual installation:**
```bash
git clone https://github.com/PhilipStark/book-genesis.git
cd book-genesis
# macOS/Linux
./install.sh
# Windows
./install.ps1
```

### Usage

Open Claude Code and use the skills:

```
# Start the full pipeline — from idea to book
/book-genesis

# Or use individual skills
/narrative-foundation    # Characters + emotion + theme (deep)
/prose-craft             # Opening + dialogue + anti-IA protocol
/beta-reader             # 3 simulated reader profiles
/production-prep         # Proofreading + formatting
/editorial-package       # Synopses + cover brief + query letter
/series-architect        # Series bible for multi-volume projects
/manuscript-manager      # State tracking between sessions
/bestseller-orchestrator # Alternative fast pipeline
```

### Your First Book (3 steps)

1. Open Claude Code in an empty directory
2. Type: `/book-genesis`
3. When prompted, give your idea: *"A detective in 1920s Berlin discovers that the murders she is investigating are being committed by versions of herself from parallel timelines."*

Book Genesis takes it from there — research, foundation, writing, scoring, revision, and the full editorial package.

---

## Skills Included

| Skill | Phase | Description |
|-------|-------|-------------|
| **book-genesis** | All | Master orchestrator — chains all 9 skills into 6 phases with quality gates and the Genesis Score V2 |
| **narrative-foundation** | 2 | Builds characters (7 layers of depth), maps emotional curves, weaves theme as a question across 4 levels, constructs voice guide |
| **prose-craft** | 3 | Engineers irresistible openings (5-layer hook), writes dialogue with subtext, enforces anti-IA protocol (10 patterns eliminated) |
| **beta-reader** | 4 | Simulates 3 non-convergent reader profiles (Devourer, Critic, Hostile) with cross-diagnosis |
| **production-prep** | 6 | 8-category proofreading (3 passes) + EPUB/print formatting with complete checklists |
| **editorial-package** | 6 | Logline + cover synopsis + editorial synopsis + query letter + cover brief — one coherent package |
| **series-architect** | — | Builds the series bible — macro arc, canonical worldbuilding, character threading across volumes |
| **manuscript-manager** | All | State engine with CHECK-IN/CHECK-OUT protocol, decision log, handoff tracking via PROJECT_STATE.yaml |
| **bestseller-orchestrator** | — | Alternative orchestrator — from pitch to finished book in a guided or autopilot pipeline |

---

## Proof of Concept

The [`examples/protocolo-nao-encontrado/`](examples/protocolo-nao-encontrado/) directory contains real artifacts from the first book produced with this system:

| File | What It Is |
|------|-----------|
| `PROJECT_STATE.yaml` | Complete project state — 15 chapters tracked with word counts and status |
| `genesis-score.md` | Full Genesis Score across 3 iterations (8.70 -> 8.95 -> 9.04) with per-dimension diagnostics |
| `beta-notes.md` | Simulated beta reader reports with consensus analysis |
| `outline.md` | Chapter-by-chapter outline with tension map and emotional arc |
| `sinopses.md` | Logline + cover paragraph + editorial synopsis |
| `cover.jpeg` | AI-generated cover |

> **Note:** The full manuscript is not included (it is the author IP). These artifacts demonstrate the system output quality.

---

## Requirements

| Requirement | Details |
|------------|---------|
| **Claude Code CLI** | [Install guide](https://docs.anthropic.com/en/docs/claude-code) |
| **Subscription** | Claude Pro ($20/mo) or Max ($100/mo) recommended for long manuscripts |
| **OS** | macOS, Linux, or Windows (with bash or PowerShell) |
| **Disk** | ~1MB for skills, project artifacts vary by book length |

---

## How It Works Under the Hood

1. Skills are markdown files (SKILL.md) installed in ~/.claude/skills/
2. Claude Code loads them as custom slash commands (e.g., /book-genesis)
3. The orchestrator reads PROJECT_STATE.yaml to resume across sessions
4. Every artifact is a file — outlines, scores, characters, the manuscript itself
5. The revision loop is driven by the Genesis Score: write -> score -> identify weakest dimension -> revise -> re-score
6. The FLOOR system means the weakest dimension drives all revision effort — no dimension gets left behind

No external APIs. No databases. No build step. Just markdown files and Claude.

---

## Contributing

Contributions are welcome! Here is how you can help:

- **Test it** — Write a book with the system and report what works and what does not
- **Translate skills** — Skills are in Portuguese; translations to English, Spanish, French, etc. are welcome
- **New stylistic devices** — Add new configurable devices beyond surreal, worldbuilding, epistolary, humor
- **Genre testing** — Test with specific genres (romance, thriller, sci-fi, non-fiction) and share results
- **Improve the Genesis Score** — Better rubrics, better anti-inflation, better calibration
- **Add examples** — Share your proof-of-concept artifacts (with permission)

Please open an issue before starting major work so we can coordinate.

---

## License

[MIT](LICENSE) — use it, fork it, build on it.

---

<p align="center">
  <strong>Built with Claude Code by <a href="https://github.com/PhilipStark">Philip Stark</a></strong>
</p>
