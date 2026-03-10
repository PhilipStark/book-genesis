# FAQ — Book Genesis V3

## General

### What is Book Genesis?

A set of 9 custom skills (prompt modules) for Claude Code that form a complete literary production pipeline. From a one-sentence idea to a publish-ready manuscript with editorial package.

### What changed from V1 to V3?

V3 consolidates 15 skills into 9 (deeper, no redundancy), replaces the 10-dimension weighted scoring with a 7-dimension FLOOR system, adds anti-inflation and anti-IA protocols, and makes the system genre-agnostic instead of surrealism-focused. See the "What is New in V3" section of the README for a full comparison table.

### Does it work in English? My language?

Yes. The skills are written in Portuguese, but Claude automatically adapts to whatever language you use. If you start a conversation in English, the entire pipeline operates in English. Same for Spanish, French, German, etc.

### Do I need Claude Max?

Claude Pro ($20/mo) works for shorter books or working chapter by chapter. Claude Max ($100/mo) is recommended for longer manuscripts where you want to evaluate or revise large sections at once, as they benefit from extended context windows.

### Is surrealism still required?

No. In V3, surrealism is one of several optional stylistic devices. The 7th dimension of the Genesis Score is configurable per project. You can choose surreal, worldbuilding, epistolary, humor, market positioning, or define your own. If you do not want any device, "Market" is the default.

---

## Writing Process

### How long does it take to write a book?

It depends on the book length, genre, and how many revision cycles are needed. The proof-of-concept (60,800 words, memoir/non-fiction) took approximately 20-30 sessions across multiple days. Each session is limited by Claude context window, so longer books require more sessions.

### Can I use it for non-fiction?

Yes. V3 includes specific protocols for non-fiction: data integration as narrative (not reports), research methodology, source verification, reported speech techniques, and argumentation that flows without reading like an academic paper.

### Can I use it for a series?

Yes. The series-architect skill builds a series bible with macro arc, canonical worldbuilding, character management across volumes, and inter-volume hook design. Use it before writing Volume 2 and whenever the series scope changes.

### What is the Genesis Score floor?

The FLOOR is the lowest score among all 7 dimensions. If your book scores 9.0 on 6 dimensions but 7.0 on one, your Genesis Score is 7.0. This forces you to strengthen every dimension, not just the ones that are easy.

### What happens if my score is below 8.0?

The pipeline enters the revision loop (Phase 5). Weaknesses are classified by taxonomy (structural, connective, prose, factual) and addressed in priority order. After revision, Phase 4 (Evaluation) runs again. Maximum 3 cycles — if the floor still does not improve, the issue is structural and you return to Phase 2 (Foundation).

### What is the anti-IA protocol?

A set of 10 detectable AI writing patterns (forced symmetry, empty poetic vocabulary, em dash excess, etc.) that are actively checked during writing, not after. Each chapter goes through the anti-IA check before advancing. The goal is prose that a reader, editor, or reviewer cannot distinguish from human writing.

---

## Technical

### How do I install it?

One command. On macOS/Linux: `curl -fsSL https://raw.githubusercontent.com/PhilipStark/book-genesis/main/install.sh | bash`. On Windows PowerShell: `irm https://raw.githubusercontent.com/PhilipStark/book-genesis/main/install.ps1 | iex`. Or clone the repo and run the install script manually.

### Where are the skills installed?

In `~/.claude/skills/`. Each skill is a directory containing a single `SKILL.md` file. Claude Code loads them as custom slash commands.

### How does state persistence work?

The manuscript-manager skill maintains a `PROJECT_STATE.yaml` file in your project root. This file tracks: current phase, chapter status, word counts, Genesis Score history, decisions made, pending handoffs, and session logs. Every session starts with CHECK-IN (read state) and ends with CHECK-OUT (update state).

### Can I use individual skills without the full pipeline?

Yes. Every skill works standalone. You can use `/narrative-foundation` to build characters for any project, `/prose-craft` to improve dialogue in an existing manuscript, `/beta-reader` to get feedback on any text, etc.

### Does it use external APIs?

No. Book Genesis is pure markdown. No external APIs, no databases, no build step. Just SKILL.md files that Claude Code loads as prompt modules. The only external calls are WebSearch (for research in Phase 1) which is a built-in Claude Code capability.

---

## Contributing

### How can I help?

Test the system by writing a book and reporting what works and what does not. Translate skills to other languages. Add new stylistic devices. Test with specific genres. Improve the Genesis Score rubric. Share proof-of-concept artifacts.

### Can I add new skills?

Yes. Create a directory in `skills/` with a `SKILL.md` file following the same format (YAML frontmatter with name and description, then the full skill content in markdown). Submit a PR.
