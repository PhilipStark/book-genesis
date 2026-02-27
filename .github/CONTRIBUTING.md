# Contributing to Book Genesis

Thanks for your interest in contributing! Book Genesis is an open-source system for AI-assisted book writing, and there are many ways to help improve it.

## Ways to Contribute

### Translate Skills
The skills are currently in Portuguese (pt-BR). Translating them to other languages is one of the most impactful contributions you can make. To translate:

1. Fork the repository
2. Create a branch: `translate/language-code` (e.g., `translate/en-US`)
3. Translate each `SKILL.md` file in `skills/`
4. Keep the YAML frontmatter structure identical
5. Submit a PR with the language code in the title

### Add Surreal Registers
The system has 8 registers. If you have expertise in a literary tradition that doesn't fit neatly into any existing register, propose a new one:

1. Write a description following the format in `docs/surreal-registers.md`
2. Include: name, best-for genres, prose characteristics, reference authors, example application
3. Submit as a PR or open a discussion issue

### Create Genre-Specific Variants
Some genres benefit from specialized skills. For example:
- A romance-specific `character-forge` that emphasizes relationship dynamics
- A thriller-specific `hook-crafter` with different tension patterns
- A children's book variant with age-appropriate vocabulary controls

### Improve the Genesis Score
The scoring rubric is versioned and can be improved:
- Propose new dimensions or weight adjustments
- Add benchmark examples for score calibration
- Suggest dimension-specific diagnostic criteria

### Add Examples
If you've used Book Genesis to create a book and are willing to share artifacts:
1. Create a directory in `examples/` with your book's name
2. Include: `PROJECT_STATE.yaml`, `genesis-score.md`, and any artifacts you're comfortable sharing
3. Do NOT include the full manuscript (protect your IP)

## Development Workflow

1. Fork the repository
2. Create a feature branch from `main`
3. Make your changes
4. Test: run the install script and verify skills load in Claude Code
5. Submit a PR with a clear description

## Commit Messages

Use conventional commits:
```
feat: add Spanish translation for character-forge
fix: correct weight calculation in genesis-score docs
docs: add FAQ entry about non-fiction support
```

## Code of Conduct

- Be respectful and constructive
- Focus on the work, not the person
- Assume good intent
- Credit others' contributions

## Questions?

Open an issue with the `question` label.
