<p align="center">

```
     ____              _
    | __ )  ___   ___ | | __
    |  _ \ / _ \ / _ \| |/ /
    | |_) | (_) | (_) |   <
    |____/ \___/ \___/|_|\_\
     ____                      _
    / ___| ___ _ __   ___  ___(_)___
   | |  _ / _ \ '_ \ / _ \/ __| / __|
   | |_| |  __/ | | |  __/\__ \ \__ \
    \____|\___|_| |_|\___||___/_|___/  V4
```

</p>

<h1 align="center">20 AI skills. One idea. A publish-ready book.</h1>

<p align="center">
  <a href="#quick-start">Quick Start</a> &middot;
  <a href="#the-pipeline">Pipeline</a> &middot;
  <a href="#genesis-score-v37">Genesis Score</a> &middot;
  <a href="#the-20-skills">Skills</a> &middot;
  <a href="#why-this-is-different">Why It's Different</a> &middot;
  <a href="docs/architecture.md">Architecture</a> &middot;
  <a href="docs/faq.md">FAQ</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/skills-20-blue" alt="20 skills" />
  <img src="https://img.shields.io/badge/phases-14-green" alt="14 phases" />
  <img src="https://img.shields.io/badge/Genesis_Score-V3.7-orange" alt="Genesis Score V3.7" />
  <img src="https://img.shields.io/badge/license-MIT-yellow" alt="MIT License" />
  <img src="https://img.shields.io/badge/platform-Claude%20Code-purple" alt="Claude Code" />
  <img src="https://img.shields.io/github/stars/PhilipStark/book-genesis?style=social" alt="GitHub Stars" />
</p>

---

Book Genesis is the only open-source system that turns a single idea into a full manuscript using 20 specialized AI skills that research, write, evaluate, disrupt, and revise -- the same pipeline used to produce a 68,000-word memoir scoring 9.0 on an empirically-calibrated quality framework benchmarked against 15 bestsellers representing 350M+ copies sold.

No external APIs. No databases. No build step. Just Claude Code and markdown files.

---

## Quick Start

**Prerequisites:** [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code) installed + Claude Pro ($20/mo) or Max ($100/mo for full novels)

**Install (one command):**

```bash
# macOS / Linux
curl -fsSL https://raw.githubusercontent.com/PhilipStark/book-genesis/main/install.sh | bash

# Windows (PowerShell)
irm https://raw.githubusercontent.com/PhilipStark/book-genesis/main/install.ps1 | iex
```

**Write a book:**

```
claude
> /book-auto pt-br "thriller sobre ex-policial vingando a família"
```

That's it. The orchestrator runs the full 14-phase pipeline autonomously. It pauses at 3 checkpoints for your approval. Everything else is automatic.

---

## What's New in V4

V4 is a ground-up rebuild. We ran 5 genre tests, hired a publishing consultant to analyze the output, identified 9 systemic problems, and fixed every one. Here's what changed:

| Feature | V3 | V4 |
|---------|----|----|
| **Anti-AI Patterns** | 10 | **20** -- 10 new deep patterns from system analysis |
| **Chaos Engine** | None | **New skill** -- breaks predictability between writing and evaluation |
| **Genesis Score** | V2 basic | **V3.7** -- calibrated against 15 bestsellers (350M+ copies) |
| **Reader Simulation** | 3 readers | **5 readers** -- added Casual Reader + Devoted Reader |
| **Commercial Viability** | None | **CVI-Launch + CVI-Legacy** -- predicts 1-year AND 20-year sales |
| **Character Depth** | Wound + lie + arc | **5 chaos markers** -- irrelevant obsession, cognitive distortion, unprompted memory, failed emotional management, distinguishability |
| **Emotional System** | Curve numbers (4/10) | **Concrete anchors** -- "the reader remembers the glasses in the purse" |
| **Opening Strategy** | Generic | **7 approaches** -- voice bomb, in medias res, confession, wrong emotion, question, ordinary-made-strange, failure |
| **Structural Diversity** | None | **8 types** -- no two consecutive chapters use the same structure |
| **Tomorrow Test** | None | **Mandatory** -- "what would the reader remember the next morning?" |
| **Discovery Test** | None | **3-channel** -- Bookstore, Amazon Look Inside, BookTok |
| **Shareability** | None | **Quote + Plot + Emotional** decomposed scoring |
| **Editor Skill** | None | **New** -- surgical revision with 13 specific issue handlers |
| **Researcher Skill** | None | **New** -- market analysis + data gathering for non-fiction |
| **Genre Profiles** | None | **8 genres** with adjusted thresholds across ALL 7 dimensions |
| **Engagement Types** | None | **5 types** ranked -- Empathy, Fascination, Self-Insertion, Intellectual Stimulation, Aspiration |
| **Re-Read Architecture** | None | **Planted details** that gain meaning after the ending |
| **Cultural Vocabulary** | None | **Branded concepts** -- terms readers adopt and use in conversation |
| **Skills** | 12 | **20** -- 8 new specialized skills |
| **Phases** | 7 | **14** -- autonomous pipeline |
| **Automation** | Manual | **Autonomous** -- 3 checkpoints only |
| **Voice System** | Voice bank | **Voice DNA** -- per-character specs, differentiation matrix |
| **Continuity** | Manual grep | **Dedicated agent** -- 5 audits |
| **Quality Gate** | Manual loop | **Auto-loop** -- eval→fix→re-eval |
| **Dialogue** | None | **Dedicated pass** -- cover-the-name test |
| **Hooks** | None | **Dedicated pass** -- opening/ending scoring, binge test |
| **Preprocessing** | None | **Bash pipeline** -- scales to 30+ chapters |

### The 10 New Anti-AI Patterns

V3 caught the obvious stuff (forced symmetry, empty metaphors, rule of three). V4 catches what makes AI prose *feel* AI even when it's technically clean:

| # | Pattern | What It Looks Like |
|---|---------|-------------------|
| 11 | **Explanatory Extension** | Every simile gets unpacked. "The water is louder than expected. Not roaring, but persistent, the sound of something that doesn't care whether you're listening." The second sentence is the fingerprint. |
| 12 | **Binary Negation Openers** | "Not X. Not Y. [What it actually is]." Defining by negation. |
| 13 | **Precision Flex** | "247 cases" when "more cases than she could count" is more human. |
| 14 | **Emotional Control Demo** | Character notices emotion, manages it, continues. Every time. |
| 15 | **Authoritative Description** | Settings described with encyclopedic confidence. First-time visitors don't notice everything. |
| 16 | **Philosophical Asides** | Thoughts that belong on coffee mugs, not in a character's head. |
| 17 | **Clean Dialogue** | Orderly turns, every line responsive. Real people interrupt, mishear, respond to the wrong thing. |
| 18 | **Thematic Echo Chamber** | Every single detail resonates with the theme. Real worlds have texture with no meaning. |
| 19 | **Graduated Reveal** | Normal, anomaly, escalate, close. Every chapter. Same structure. |
| 20 | **Emotional Temperature Report** | "Jaw clenched. Heart pounded. Stomach dropped." On schedule, like vital signs. |

Pattern #11 (Explanatory Extension) appeared in **every chapter** of a 14-chapter test manuscript. It was the single most AI-identifiable pattern. V4 kills it at the sentence level.

---

## The 14-Phase Pipeline

```
  IDEA
   |
   v
Phase 1:   RESEARCH ---------> /book-researcher
Phase 1.5: READER PERSONAS --> /reader-persona          [NEW]
Phase 2:   FOUNDATION -------> /narrative-foundation
Phase 2.5: VOICE DNA --------> /voice-fingerprint       [NEW]
   >>> CHECKPOINT 1: You approve the foundation <<<
Phase 2.7: CONTINUITY -------> /continuity-guardian      [NEW]
Phase 3:   WRITING ----------> /prose-craft
Phase 3.1: DIALOGUE POLISH --> /dialogue-polish          [NEW]
Phase 3.2: HOOK CRAFT -------> /hook-craft               [NEW]
Phase 3.5: DISRUPTION -------> /chaos-engine
Phase 3.8: MECH PREPROCESS --> /mechanical-preprocess    [NEW]
Phase 4:   EVALUATION -------> /beta-reader
Phase 4.5: QUALITY GATE -----> /quality-gate             [NEW]
   >>> CHECKPOINT 2: You approve the manuscript <<<
Phase 5:   REVISION ---------> /book-editor
Phase 5.5: CONTINUITY -------> /continuity-guardian      [NEW]
Phase 6:   DELIVERY ---------> /editorial-package + /production-prep
   >>> CHECKPOINT 3: Book delivered <<<
```

Every phase has a gate. Nothing advances without passing. The revision loop (Phases 4-5) continues until the Genesis Score floor hits 8.0+ or 3 cycles are reached.

---

## Why This Is Different

### The Problem

Every AI writing tool produces the same thing -- competent, forgettable prose. You can generate 50,000 words in an afternoon and every page reads like it was written by the same polite, analytical, emotionally-managed narrator. Literary fiction reads like thrillers. Memoirs read like self-help. Five genres, one author.

This is the Claude House Style: similes that get explained, dialogue in orderly turns, characters who notice their emotions and manage them successfully, settings described with encyclopedic confidence, and themes that echo in every detail like a hall of mirrors.

It scores a 7 on any rubric. It gets rejected by every editor who reads past page 3.

### What We Did

We ran 5 genre tests (literary fiction, thriller, memoir, prescriptive non-fiction, commercial fiction). A publishing consultant analyzed the output and identified 9 systemic problems. The full analysis is in [`docs/system-analysis.md`](docs/system-analysis.md).

Then we rebuilt the pipeline from the ground up.

### The Key Insight

The gap between "competent" and "unforgettable" is not about better prompts. It is about controlled chaos.

Real humans have irrelevant thoughts during important moments. They fail to manage their emotions. They remember things at the wrong time. They interrupt each other. They notice the wrong details. Their prose rhythm breaks under pressure.

AI does none of this. AI is relentlessly competent.

That is why V4 has a **Chaos Engine** -- an agent whose entire job is to make things worse in a specific, human way. It injects intrusive thoughts that have nothing to do with the plot. It makes characters fail to control their composure. It breaks the prose rhythm when a character is stressed. It adds texture details that carry zero thematic weight.

It is the only writing pipeline with an agent designed to break its own output.

### The Benchmark

We calibrated the Genesis Score V3.7 against 15 bestsellers representing 350M+ copies. The system correctly identifies what makes bestsellers work and what makes them different from merely good books.

Average accuracy: **85%**. Worst case: 70% (The Alchemist -- parable fiction has a documented accuracy ceiling due to non-craft factors like gift-ability and translation ease).

---

## Autonomous Mode

V4.1 introduces `/book-auto` — a single command that runs the entire pipeline:

```
/book-auto en "a grief counselor discovers her five patients are connected to the same murder"
```

The orchestrator agent runs up to 200 turns autonomously. It only pauses at 3 checkpoints:

1. **Foundation approval** — You see the characters, outline, and voice specs before writing starts
2. **Manuscript approval** — You see the full score breakdown before the editorial package
3. **Delivery** — You receive the finished book

Everything between checkpoints is automatic: writing, dialogue polish, hooks, disruption, mechanical cleanup, evaluation, quality gate loops, revision, continuity checks.

For manual control, use `/book-genesis` instead — same pipeline, you drive each phase.

---

## Genesis Score V3.7

A **7-dimension FLOOR scoring system**. Your book's score equals its weakest dimension. You cannot hide weak characters behind brilliant prose.

| # | Dimension | What It Measures | 8.0+ Requires |
|---|-----------|-----------------|---------------|
| 1 | **Originality** | What this book does that no other did | 3+ unique elements that serve the story |
| 2 | **Theme** | Depth of the central question | Present in 80%+ of chapters, never declared |
| 3 | **Characters** | Dimensionality, chaos, arc | 5 chaos markers + cover-name distinguishability test |
| 4 | **Prose & Voice** | Sentence quality + anti-AI compliance | Passes 20-pattern scan + voice identifiable on any page |
| 5 | **Pacing** | Speed variation + page-turning compulsion | Value shift every chapter + speed variation passages |
| 6 | **Emotion** | Real emotional investment | Concrete anchors + Tomorrow Test pass |
| 7 | **Market Impact** | Commercial viability | CVI-Launch + CVI-Legacy + Discovery Test pass |

**Anti-inflation protocol:** Evidence required for every score. Max +0.5 per iteration. Reference comparison against published titles for scores >= 9.0. Cross-dimensional verification (if prose goes up, check pacing didn't drop).

**New in V3.7:**
- CVI bifurcated into **CVI-Launch** (first-year sales prediction) and **CVI-Legacy** (20-year sales prediction)
- **5 engagement types** with adjusted CVI weights (Aspiration books get Identity Effect at 25%)
- **8 genre profiles** with different thresholds across all dimensions
- **Scope declaration** -- the evaluator states what the score covers and what it cannot measure
- **Oscillation analysis** -- detects scores bouncing between iterations (sign of prompt-gaming)

| Score | Meaning |
|-------|---------|
| 6.0-6.5 | Amateur. Editor rejects on page 1. |
| 7.0-7.5 | Competent. Publishable but forgettable. The AI default. |
| 8.0-8.5 | Strong. Level of a book from a major publisher. |
| 9.0-9.5 | Exceptional. Bestseller or award-winning territory. |
| 10.0 | Genre-defining. Reserved for works that created categories. |

Full scoring methodology: [`docs/genesis-score.md`](docs/genesis-score.md)

---

## The 20 Skills

| Skill | Command | Phase | What It Does |
|-------|---------|-------|-------------|
| **Book Auto** | `/book-auto` | Entry point | One-command book generation. Dispatches autonomous orchestrator. |
| **Book Genesis** | `/book-genesis` | All | Manual orchestrator. Chains all skills through 14 phases with quality gates. |
| **Book Researcher** | `/book-researcher` | 1 | Market analysis, comp titles, audience profiling, data gathering for non-fiction. |
| **Reader Persona** | `/reader-persona` | 1.5 | 3-5 reader personas with psychology, deal-breakers, emotional triggers. |
| **Narrative Foundation** | `/narrative-foundation` | 2 | Characters (5 chaos markers), theme as question, voice bank, outline, engagement type, re-read architecture. |
| **Voice Fingerprint** | `/voice-fingerprint` | 2.5 | Per-character voice DNA, differentiation matrix, voice-under-pressure specs. |
| **Continuity Guardian** | `/continuity-guardian` | 2.7 + 5.5 | Cross-manuscript consistency audit, timeline, information flow, plot threads. |
| **Prose Craft** | `/prose-craft` | 3 | Chapter writing with voice inhabitation, 8 structural types, 7 opening strategies, 20-pattern anti-AI, speed design. |
| **Dialogue Polish** | `/dialogue-polish` | 3.1 | Cover-the-name test, subtext injection, voice consistency in dialogue. |
| **Hook Craft** | `/hook-craft` | 3.2 | Chapter openings + endings scoring, binge test across all chapters. |
| **Chaos Engine** | `/chaos-engine` | 3.5 | Breaks predictability. Injects irrelevant thoughts, failed composure, unprompted memories, cognitive distortions. |
| **Mechanical Preprocess** | `/mechanical-preprocess` | 3.8 | Bash pipeline for em-dashes, Pattern #11, adverbs, repetition. Scales to 30+ chapters. |
| **Beta Reader** | `/beta-reader` | 4 | 5 non-convergent reader profiles. Genesis Score V3.7. CVI. Tomorrow Test. Discovery Test. Anti-AI scan. |
| **Quality Gate** | `/quality-gate` | 4.5 | Auto-loop evaluate→fix→re-evaluate, max 3 iterations per chapter. |
| **Book Editor** | `/book-editor` | 5 | Surgical revision with 13 issue handlers. Structural, connective, prose, factual taxonomy. |
| **Editorial Package** | `/editorial-package` | 6 | Query letter, 3 synopsis formats, cover brief, comp title positioning. |
| **Production Prep** | `/production-prep` | 6 | 8-category proofreading (3 passes) + EPUB/print formatting with checklists. |
| **Manuscript Manager** | `/manuscript-manager` | All | State engine. CHECK-IN/CHECK-OUT protocol, decision log, handoff tracking via PROJECT_STATE.yaml. |
| **Series Architect** | `/series-architect` | -- | Series bible for multi-volume projects. Macro arc, canonical worldbuilding, character threading. |
| **Bestseller Orchestrator** | `/bestseller-orchestrator` | -- | Alternative fast pipeline. Autopilot or guided mode (max 3 questions). |

Each skill works standalone or orchestrated. Use `/book-auto` for full autonomous mode, `/book-genesis` for manual control, or any individual skill for specific tasks.

---

## Character Chaos System

V3 characters had wound, lie, and arc. Solid, but every AI writing tool does this now.

V4 characters have **5 chaos markers** -- the things that make fictional people feel like actual people:

| Marker | What It Is | Example |
|--------|-----------|---------|
| **Irrelevant Obsession** | A thought with zero narrative purpose | She was thinking about whether forks should go up or down in the dishwasher. During the funeral. |
| **Cognitive Distortion** | A habitual thinking error that shapes decisions | He assumed she was angry because she didn't text back in 20 minutes. She was driving. |
| **Unprompted Memory** | A memory that surfaces at the wrong time | The smell of the hospital brought back his grandmother's kitchen. He couldn't explain why. |
| **Failed Emotional Management** | The character tries to stay composed and fails | She said "I'm fine" and her voice cracked on "fine." |
| **Distinguishability** | Cover the name, identify the speaker | If you can't tell who's talking without the dialogue tag, the character doesn't exist yet. |

These are not plot points. They are human noise. They exist because people are not narrative vehicles.

---

## Proof of Concept

**Protocolo Nao Encontrado** -- a 68,000-word memoir in Portuguese that went through the full V4 pipeline.

- Genesis Score floor: **9.0**
- 3 scoring iterations: 8.70 -> 8.95 -> 9.04
- 13 chapters across 3 parts + introduction + epilogue
- Full editorial package (query letter, synopses, cover brief)

Artifacts in [`examples/protocolo-nao-encontrado/`](examples/protocolo-nao-encontrado/):

| File | Contents |
|------|----------|
| `genesis-score.md` | Full 3-iteration scoring with per-dimension diagnostics |
| `beta-notes.md` | 5 simulated reader reports with consensus analysis |
| `outline.md` | Chapter-by-chapter outline with tension map |
| `sinopses.md` | Logline + cover paragraph + editorial synopsis |

> The full manuscript is not included (author IP). These artifacts demonstrate what the system produces.

---

## Benchmarks

The Genesis Score V3.7 was calibrated against published bestsellers:

| Book | Copies Sold | Accuracy |
|------|------------|----------|
| Fifty Shades of Grey | 150M | 87% |
| The Alchemist | 150M | 70%* |
| Gone Girl | 20M | 88% |
| Atomic Habits | 15M+ | 90% |
| Normal People | 3M | 85% |

*The Alchemist represents a documented accuracy ceiling for parable fiction -- non-craft factors (gift-ability, translation ease, spiritual timing) account for ~30% of its commercial success and fall outside any craft-based framework.

**Average accuracy: 85%.** The framework correctly identifies what makes bestsellers work -- and more importantly, what separates them from the thousands of competent books that sell 500 copies.

---

## Requirements

| Requirement | Details |
|------------|---------|
| **Claude Code CLI** | [Install guide](https://docs.anthropic.com/en/docs/claude-code) |
| **Subscription** | Claude Pro ($20/mo) minimum. Claude Max ($100/mo) recommended for full novels. |
| **OS** | macOS, Linux, or Windows |
| **Disk** | ~2MB for skills. Project artifacts vary by book length. |

---

## Installation

### One command

**macOS / Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/PhilipStark/book-genesis/main/install.sh | bash
```

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/PhilipStark/book-genesis/main/install.ps1 | iex
```

### Manual

```bash
git clone https://github.com/PhilipStark/book-genesis.git
cd book-genesis
# macOS / Linux
./install.sh
# Windows
./install.ps1
```

The installer copies skill files to `~/.claude/skills/` and verifies Claude Code can find them.

---

## How It Works Under the Hood

1. Skills are markdown files (`SKILL.md`) installed in `~/.claude/skills/`
2. Claude Code loads them as custom slash commands (e.g., `/book-genesis`)
3. The orchestrator reads `PROJECT_STATE.yaml` to resume across sessions
4. Every artifact is a file -- outlines, scores, characters, the manuscript itself
5. The revision loop is driven by the Genesis Score: write -> disrupt -> score -> identify weakest dimension -> revise -> re-score
6. The FLOOR system means the weakest dimension drives all revision effort

No external APIs. No databases. No build step. No dependencies beyond Claude Code.

---

## Contributing

We want genre testers, skill translators, and anyone who has tried to make AI write something worth reading.

- **Test it** -- Write a book and report what works and what breaks
- **Translate skills** -- Skills are in Portuguese; English, Spanish, French, and other translations welcome
- **New genre profiles** -- Test with specific genres and submit calibrated profiles
- **Improve the Genesis Score** -- Better rubrics, better anti-inflation, better calibration data
- **Add examples** -- Share your proof-of-concept artifacts

See [CONTRIBUTING.md](.github/CONTRIBUTING.md) for guidelines. Open an issue before starting major work.

---

## Star History

<!-- Copy this after the repo goes public -->
<a href="https://star-history.com/#PhilipStark/book-genesis&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=PhilipStark/book-genesis&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=PhilipStark/book-genesis&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=PhilipStark/book-genesis&type=Date" />
 </picture>
</a>

---

## License

[MIT](LICENSE) -- use it, fork it, sell books with it.

---

<p align="center">
  <strong>Built with Claude Code by <a href="https://github.com/PhilipStark">Philip Stark</a></strong>
</p>

---

## 🌐 Community

- ⭐ **[Star this repo](https://github.com/PhilipStark/book-genesis)** — helps others discover it
- 💬 **[Discussions](https://github.com/PhilipStark/book-genesis/discussions)** — share your books, ask questions
- 📚 **[Community Showcase](https://github.com/PhilipStark/book-genesis/discussions/4)** — see books the community created
- 🐛 **[Issues](https://github.com/PhilipStark/book-genesis/issues)** — bugs and feature requests

**Join the conversation:**
- Reddit: [r/ClaudeAI](https://reddit.com/r/ClaudeAI) — search "Book Genesis"
- HackerNews: [news.ycombinator.com](https://news.ycombinator.com) — search "Book Genesis"

