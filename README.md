<p align="center">
  <img src="examples/protocolo-nao-encontrado/cover.jpeg" alt="Protocolo Nao Encontrado — a book written entirely by AI" width="300" />
</p>

<h1 align="center">Book Genesis</h1>

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
  <img src="https://img.shields.io/badge/skills-15-blue" alt="15 skills" />
  <img src="https://img.shields.io/badge/phases-8-green" alt="8 phases" />
  <img src="https://img.shields.io/badge/license-MIT-yellow" alt="MIT License" />
  <img src="https://img.shields.io/badge/platform-Claude%20Code-purple" alt="Claude Code" />
</p>

---

## The Story

I gave Claude one sentence: *"A millennial who spent 8 years and $15,000 trying to cure his anxiety — and failed."*

What came back was a **60,800-word book** in Portuguese — 13 chapters across three parts, with an introduction and epilogue, complete with Kafkaesque bureaucratic interludes, 50+ real footnotes, simulated beta reader feedback from 5 distinct profiles, a professional cover brief, three synopsis formats, and a query letter ready for publishers.

The book went through **3 scoring iterations**, climbing from 8.70 to **9.04** on the Genesis Score — a weighted 10-dimension evaluation system that doesn't let anything slip through. Two full revision cycles expanded the manuscript from 52,000 to 60,800 words, adding sensory scenes, deepening secondary characters, and varying the rhythmic structure of diagnostic chapters.

The EPUB was generated. The cover was created by AI. The book is real.

**This repository contains the system that made it possible** — 15 custom skills for [Claude Code](https://docs.anthropic.com/en/docs/claude-code) that form a complete literary production pipeline, from a one-sentence idea to a publish-ready manuscript.

---

## What Is This?

Book Genesis is a set of **15 custom skills** (prompt modules) for Claude Code that work together as a literary production system. Think of it as a book factory with quality gates at every stage.

Each skill is a standalone specialist:
- **Character Forge** builds characters with psychological depth (wounds, contradictions, arcs)
- **Emotion Engineer** maps the reader's emotional curve chapter by chapter
- **Beta Reader Sim** simulates 5 distinct reader profiles reviewing your manuscript
- **Genesis Score** evaluates your book across 10 weighted dimensions

But the real power is in the **orchestrator** — the `book-genesis` skill — which chains all 15 skills into an 8-phase pipeline with hard quality gates. Nothing advances without passing.

**Key features:**
- Works in **any language** (skills are in Portuguese, but Claude adapts to your language automatically)
- **8 adaptive surreal registers** (Kafkaesque, Borgesian, Lynchian, Magical Realism, and more)
- **Genesis Score**: quantitative evaluation with 10 weighted dimensions — approval requires >9.0 weighted average
- Every decision becomes a **persistent artifact** (YAML state, markdown docs) — nothing stays "just in chat"
- Each skill works **standalone** or **orchestrated** by Book Genesis

---

## The Pipeline

```
 PHASE 0          PHASE 1           PHASE 2          PHASE 3
 ┌──────────┐    ┌──────────────┐  ┌────────────┐  ┌──────────────┐
 │ RESEARCH │───▶│  NARRATIVE   │─▶│ARCHITECTURE│─▶│   WRITING    │
 │          │    │  FOUNDATION  │  │            │  │              │
 │ WebSearch│    │ Theme (4lvl) │  │ Outline    │  │ 5 obligations│
 │ Top books│    │ Characters   │  │ Hook strat │  │ per chapter  │
 │ Trends   │    │ Voice+Filter │  │ Tension map│  │ Quality gates│
 │ Ref Bible│    │ Emotion map  │  │            │  │ at 25/50/75% │
 └──────────┘    └──────────────┘  └────────────┘  └──────────────┘
                                                          │
 ┌──────────┐    ┌──────────────┐  ┌────────────┐        │
 │ EDITORIAL│◀───│   POLISH     │◀─│  REVISION  │◀── if score < 9.0
 │ PACKAGE  │    │              │  │  DIRECTED   │        │
 │          │    │ 5 beta sims  │  │            │  ┌──────────────┐
 │ Synopses │    │ 3-pass proof │  │ Weakest    │  │  EVALUATION  │
 │ Cover    │    │ Emotion check│  │ dimension  │  │ GENESIS SCORE│
 │ Format   │    │              │  │ first      │  │              │
 │ Query    │    │              │  │ Max 5 iter │  │ 10 dimensions│
 └──────────┘    └──────────────┘  └────────────┘  │ Weighted avg │
  PHASE 7          PHASE 6           PHASE 5        │ Pass: > 9.0  │
                                                    └──────────────┘
                                                      PHASE 4
```

**Every phase has a gate.** No phase advances without its gate passing. The revision loop (Phases 4-5) continues until the Genesis Score hits 9.0+ or the user accepts the current score after 5 iterations.

---

## Genesis Score

The heart of quality control. A **10-dimension weighted scoring system** that evaluates your manuscript like a panel of experts.

| # | Dimension | Weight | What It Measures |
|---|-----------|--------|-----------------|
| 1 | **Originality** | 1.2 | Premise, approach, trope subversion |
| 2 | **Theme** | 1.1 | Thematic depth across 4 levels |
| 3 | **Characters** | 1.2 | Wounds, arcs, contradictions, voice |
| 4 | **Prose** | 1.0 | Sentence-level quality, imagery, rhythm |
| 5 | **Pacing** | 0.8 | Tension curve, peaks and valleys |
| 6 | **Emotion** | 1.0 | Reader's emotional journey, catharsis |
| 7 | **Coherence** | 0.8 | Internal consistency (timeline, characters, world) |
| 8 | **Market** | 0.7 | Commercial positioning, comp titles |
| 9 | **Voice** | 1.0 | Authorial identity, stylistic signature |
| 10 | **Surreal** | 1.2 | Integration of surreal register — organic, not decorative |

**Approval criteria:**
- Weighted average **> 9.0**
- No individual dimension **< 8.0**

### Real Example: *Protocolo Nao Encontrado*

The proof-of-concept book went through 3 scoring iterations:

```
Iteration 1 (first draft):  8.70 — FAILED   (weakest: Pacing 8.2)
Iteration 2 (after revision): 8.95 — FAILED  (weakest: Pacing 8.7, Market 8.7)
Iteration 3 (after expansion): 9.04 — PASSED (weakest: Market 8.9)
```

Each iteration identified specific chapters and paragraphs to improve. The system doesn't say "make it better" — it says "rewrite paragraph X of chapter Y with technique Z." See the full scoring history in [`examples/protocolo-nao-encontrado/genesis-score.md`](examples/protocolo-nao-encontrado/genesis-score.md).

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
/character-forge    # Deep character development
/emotion-engineer   # Emotional curve mapping
/hook-crafter       # First line / first scene strategy
/beta-reader-sim    # 5 simulated reader profiles
/proofreader        # 3-pass proofreading
/book-formatter     # EPUB/print formatting guide
```

### Your First Book (3 steps)

1. Open Claude Code in an empty directory
2. Type: `/book-genesis`
3. When prompted, give your idea: *"A detective in 1920s Berlin discovers that the murders she's investigating are being committed by versions of herself from parallel timelines."*

Book Genesis takes it from there — research, characters, outline, writing, scoring, revision, and the full editorial package.

---

## Skills Included

| Skill | Phase | Description |
|-------|-------|-------------|
| **book-genesis** | All | Master orchestrator — chains all 15 skills into 8 phases with quality gates |
| **character-forge** | 1 | Builds characters with psychological wounds, contradictions, unique voice, and transformation arcs |
| **theme-weaver** | 1 | Ensures the central theme is woven into every scene across 4 depth levels |
| **emotion-engineer** | 1 | Maps and designs the reader's emotional curve chapter by chapter |
| **hook-crafter** | 2 | Engineers irresistible openings — first line, first page, first chapter |
| **dialogue-master** | 3 | Writes and revises dialogue with subtext, unique voice, and zero exposition dumps |
| **beta-reader-sim** | 6 | Simulates 5 distinct reader profiles reviewing the complete manuscript |
| **proofreader** | 6 | 3-pass proofreading: read-aloud, category search, invisible errors |
| **synopsis-writer** | 7 | Writes commercial synopses in 3 formats: logline, cover paragraph, editorial synopsis |
| **cover-brief** | 7 | Creates a complete cover design brief with market analysis and AI generation prompts |
| **book-formatter** | 7 | Manuscript formatting guide for ebook (EPUB/MOBI) and print (POD) |
| **query-letter** | 7 | Writes and revises query letters for literary agents and publishers |
| **series-architect** | — | Builds the series bible — macro arc, worldbuilding, character threading across books |
| **manuscript-manager** | — | Orchestrates manuscript state between sessions via PROJECT_STATE.yaml |
| **bestseller-orchestrator** | — | Alternative orchestrator — from pitch to finished book in a single pipeline |

---

## Proof of Concept

The [`examples/protocolo-nao-encontrado/`](examples/protocolo-nao-encontrado/) directory contains real artifacts from the first book produced with this system:

| File | What It Is |
|------|-----------|
| `PROJECT_STATE.yaml` | Complete project state — 15 chapters tracked with word counts and status |
| `genesis-score.md` | Full Genesis Score across 3 iterations (8.70 → 8.95 → 9.04) with per-dimension diagnostics |
| `beta-notes.md` | 5 simulated beta reader reports with consensus analysis |
| `outline.md` | Chapter-by-chapter outline with tension map and emotional arc |
| `sinopses.md` | Logline + cover paragraph + editorial synopsis |
| `cover.jpeg` | AI-generated cover |

> **Note:** The full manuscript is not included (it's the author's IP). These artifacts demonstrate the system's output quality.

---

## Surreal Registers

Book Genesis uses **8 adaptive surreal registers** that act as a lens on the prose, not a genre:

| Register | Best For | Reference Authors |
|----------|---------|-------------------|
| **Borgesian** | Intellectual thriller, philosophical fiction | Borges, Danielewski, Eco |
| **Lynchian** | Psychological thriller, noir, contemporary horror | Lynch, Murakami, Mariana Enriquez |
| **Magical Realism** | Family drama, generational saga, literary romance | Garcia Marquez, Allende, Mia Couto |
| **Weird Fiction** | Cosmic horror, speculative fiction, literary sci-fi | VanderMeer, Mieville, Lovecraft (revised) |
| **Oneiric** | Romance, coming-of-age, introspective fiction | Clarice Lispector, Murakami, Carrington |
| **Kafkaesque** | Social fiction, satire, dystopia, bureaucratic fiction | Kafka, Saramago, Huxley |
| **Carrollian** | Fantasy, YA, advanced middle-grade, literary humor | Carroll, Gaiman, Pratchett |
| **Cronenbergian** | Body horror, visceral sci-fi, medical thriller | Cronenberg, Schweblin, Carmen Maria Machado |

Read more in [`docs/surreal-registers.md`](docs/surreal-registers.md).

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

1. Skills are markdown files (`SKILL.md`) installed in `~/.claude/skills/`
2. Claude Code loads them as custom slash commands (e.g., `/book-genesis`)
3. The orchestrator reads `PROJECT_STATE.yaml` to resume across sessions
4. Every artifact is a file — outlines, scores, characters, the manuscript itself
5. The revision loop is driven by the Genesis Score: write → score → identify weaknesses → revise → re-score

No external APIs. No databases. No build step. Just markdown files and Claude.

---

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](.github/CONTRIBUTING.md) for guidelines.

**Ideas for contributions:**
- Translate skills to English, Spanish, French, etc.
- Add new surreal registers
- Create genre-specific skill variants (romance, thriller, sci-fi)
- Improve the Genesis Score rubric
- Add more proof-of-concept examples

---

## License

[MIT](LICENSE) — use it, fork it, build on it.

---

<p align="center">
  <strong>Built with Claude Code by <a href="https://github.com/PhilipStark">Philip Stark</a></strong>
</p>
