# FAQ

## General

### What is Book Genesis?
A set of 15 custom skills (prompt modules) for Claude Code that form a complete literary production pipeline. Give it a one-sentence idea, and it produces a publishable manuscript with an editorial package.

### Is this an AI that writes books for me?
Yes and no. Book Genesis orchestrates Claude to write a complete book, but the quality depends heavily on your initial idea, your feedback during the process, and editorial decisions you make along the way. Think of it as a highly structured co-writing system with built-in quality control.

### What language does it work in?
Any language Claude supports. The skills themselves are written in Portuguese (they were developed and tested in pt-BR), but Claude automatically adapts to whatever language you specify. Set `idioma: "en-US"` when prompted, and everything — from character profiles to the manuscript — will be in English.

### How long does it take to generate a full book?
It depends on length, complexity, and how many revision cycles are needed. A ~60k-word novel typically takes several Claude Code sessions. The system is designed to persist state between sessions via `PROJECT_STATE.yaml`, so you can stop and resume at any point.

### What's the maximum book length?
There's no hard limit from the system. The proof-of-concept was ~60,800 words (13 chapters + intro + epilogue). For longer works (90k+), the revision loop may require more iterations to maintain consistency.

---

## Installation

### Do I need to install all 15 skills?
No. The `book-genesis` orchestrator contains inline logic for every sub-skill. If a dedicated skill isn't installed, it uses its own version. Installing dedicated skills unlocks more depth and nuance, but the orchestrator works solo.

**Minimum install:** Just `book-genesis`
**Recommended:** All 15 for the full experience

### Can I use individual skills without the orchestrator?
Yes. Every skill works standalone. You can use `/character-forge` to develop characters for a book you're writing manually, or `/beta-reader-sim` to get feedback on any manuscript.

### The installer failed. What do I do?
The installer just copies files. You can do it manually:
```bash
# Copy all skills to your Claude skills directory
cp -r skills/* ~/.claude/skills/
```
On Windows:
```powershell
Copy-Item -Recurse skills\* $env:USERPROFILE\.claude\skills\
```

### Where are skills stored?
In `~/.claude/skills/` (or `%USERPROFILE%\.claude\skills\` on Windows). Each skill is a directory containing a `SKILL.md` file.

---

## Usage

### How do I start a new book?
1. Open Claude Code in a new empty directory
2. Type `/book-genesis`
3. Provide your idea when prompted
4. Choose guided mode (up to 3 questions) or autopilot mode ("just go")

### How do I resume a book in progress?
Open Claude Code in the book's directory and type `/continuar` (or `/book-genesis` — it will detect `PROJECT_STATE.yaml` and offer to resume).

### Can I skip phases?
Yes. Use individual commands to jump to specific phases:
- `/outline` — skip to architecture
- `/score` — skip to evaluation
- `/beta` — skip to beta readers
- `/pacote` — skip to editorial package

### What are the "5 obligations" for each chapter?
Every chapter must simultaneously fulfill:
1. **Plot** — advance at least one plot point
2. **Character** — reveal, deepen, or transform a character
3. **Emotion** — shift the reader's emotional state
4. **Theme** — echo the central theme without preaching
5. **Surreal** — manifest the chosen register organically

### What if the Genesis Score never reaches 9.0?
After 5 revision iterations, the system escalates to you with three options:
1. Accept the current score
2. Restructure a specific part
3. Change the premise/approach

Most books reach 9.0 within 2-3 iterations.

---

## Surreal Registers

### Do I have to use a surreal register?
The system is designed around them, but you can choose a register that's very subtle (like Oneiric or Magical Realism at low intensity). The surreal register is a slider, not an on/off switch.

### Can I mix registers?
Yes. You can specify a primary and secondary register (e.g., "Lynchian-Kafkaesque" or "Oneiric with Magical Realism elements"). The orchestrator adapts.

### What if I want pure realism?
Use the Oneiric register at minimum intensity. The surreal dimension in the Genesis Score will still be evaluated, but it can score well with very subtle touches — a metaphor that's slightly too vivid, a perception that's slightly off, a dream that echoes reality a bit too precisely.

---

## Quality & Output

### How good is the output, really?
The proof-of-concept (*Protocolo Nao Encontrado*) scored 9.04 on the Genesis Score after 3 iterations. It's a complete, structurally sound, emotionally engaging manuscript. Whether it's "good" by literary standards is subjective — but the system's scoring methodology is rigorous and the output is significantly above unstructured AI writing.

### Can I edit the output myself?
Absolutely. The manuscript is just markdown files. Edit them directly, then run `/score` to re-evaluate if you want.

### Does it handle non-fiction?
Yes. The proof-of-concept is actually a non-fiction book (confessional essay / generational diagnosis). The system adapts the pipeline to the genre — non-fiction replaces "plot" with "argument structure" and "characters" with "figures/subjects."

### What formats can I export to?
The `book-formatter` skill generates a formatting guide and structure ready for conversion to EPUB, MOBI, DOCX, and print-ready PDF. You'll need external tools (Pandoc, Calibre, etc.) for the actual file conversion.

---

## Contributing

### How can I contribute?
See [CONTRIBUTING.md](../.github/CONTRIBUTING.md). Top priorities:
- Translate skills to other languages
- Add new surreal registers
- Create genre-specific skill variants
- Improve the Genesis Score rubric
- Add proof-of-concept examples

### Can I create my own skills that work with the pipeline?
Yes. Any skill following the `SKILL.md` format in `~/.claude/skills/` will work with Claude Code. To integrate with the `book-genesis` orchestrator, follow the naming conventions and artifact file paths described in the architecture docs.
