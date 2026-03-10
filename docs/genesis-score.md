# Genesis Score V2 — Scoring Reference

The Genesis Score is the quality control system at the heart of Book Genesis. V2 introduces the FLOOR system and anti-inflation protocol.

## Core Principle: FLOOR, Not Average

The score is the **lowest dimension among all 7**. Not the average. Not the weighted average. The lowest.

A book with 6 dimensions at 9.0 and one at 7.0 has a Genesis Score of **7.0**.

This forces the writer to strengthen ALL dimensions. You cannot compensate weak characters with brilliant prose. You cannot hide poor pacing behind deep theme. Every dimension must clear the bar.

## The 7 Dimensions

### 1. Originality

**What it measures:** What this book does that no other book did.

**How to evaluate:** List 3 unique elements. If you cannot list 3, the score is <= 7.0.

**What counts:** Unique premise, unexpected approach, trope subversion, original structural choices, fresh voice in a saturated genre.

**What does not count:** Being "different" for the sake of different. Originality must serve the story.

### 2. Theme

**What it measures:** Depth of the central question.

**How to evaluate:** Does the theme appear in >= 80% of chapters without being explicitly declared? If yes, score >= 8.0. Does a character ever say "the theme of this book is X"? If yes, score <= 7.0.

**4 levels of weaving:**
- MACRO: The question of the entire book
- MEDIUM: How each part reflects the question from a different angle
- MICRO: How each chapter touches the question (advancing, not repeating)
- NANO: Images, metaphors, recurring details that echo the theme

### 3. Characters

**What it measures:** Dimensionality, contradictions, and transformation arc.

**How to evaluate:** Each main character has wound + lie + arc? Cover the name — are the voices distinguishable? Minimum 2 contradictions per main character.

**7 layers:** Wound, Lie, Conscious Desire, Unconscious Need, Contradictions, Voice, Transformation Arc.

### 4. Prose & Voice

**What it measures:** Sentence-level quality + recognizable authorial personality + anti-IA compliance.

**How to evaluate:** Open 3 random pages. Is the voice identifiable? Are there sentences an editor would highlight positively? Does it pass the anti-IA check (10 patterns)?

**Anti-IA check:** Forced symmetry, empty poetic vocabulary, automatic rule-of-three, em dash excess, decorative metaphors, dramatic "And" openings, pseudo-deep closing paragraphs, excessive parallelism, too-smooth transitions, described-not-shown emotion.

### 5. Pacing & Coherence

**What it measures:** Speed variation + internal consistency + page-turning quality.

**How to evaluate:** Does the reader turn the page in >= 80% of chapters? Do paragraph sizes vary? Are there contradictions between chapters? Does the speed change within each chapter?

### 6. Emotion

**What it measures:** Real emotional investment from the reader.

**How to evaluate:** Identify the 3 highest-impact moments. Do they work? Does the reader care about the character BEFORE suffering with them? Is there investment (vulnerability + effort + clear stakes) before every emotional beat?

### 7. Configurable Dimension

**What it measures:** Varies by project. Defined at the start.

**Options:**
- **Surreal/Kafkaesque** — Bureaucratic interludes at 3 levels: ILLUSTRATE (<=7.0), COMMENT (7.5-8.0), REVEAL (>=8.5)
- **Market** (default if no device) — Clear audience, comp titles, cultural moment, appropriate word count
- **Worldbuilding** — Consistent rules, sensory details, real cost for characters
- **Epistolary** — Documents that reveal more than narrative, with their own voice
- **Humor** — Humor that serves the scene, consistent, with register variation
- **Custom** — Any device defined by the user

## Anti-Inflation Protocol

LLMs systematically inflate scores. These 5 rules prevent that:

### Rule 1: Evidence Required

Every score must cite a specific passage from the manuscript. "Prose 9.0" with no citation = invalid score. The evaluator must point to the exact chapter, paragraph, and ideally the specific sentences that justify the score.

### Rule 2: +0.5 Ceiling Per Iteration

If a dimension scored 7.5 in iteration 1, the maximum in iteration 2 is 8.0. Larger jumps require extraordinary evidence — a complete rewrite of the relevant sections with demonstrably superior quality.

### Rule 3: Reference Comparison for High Scores

When scoring any dimension >= 9.0, the evaluator must answer: "Would a professional editor agree that this dimension is at the level of [specific published book]?" If the answer is not a confident yes, the score must be <= 8.5.

### Rule 4: Cross-Check Adjacent Dimensions

When one dimension improves, re-verify the ones it touches. Prose went up? Check if Pacing held. Characters improved? Check if Theme is still woven. Improvements in one area can inadvertently degrade another.

### Rule 5: Floor Calibration

The floor mechanism itself prevents inflation. Having 5 dimensions at 9.0 and one at 7.0 produces a score of 7.0. This makes it impossible to inflate the overall score without genuinely improving every dimension.

## Evaluation Protocol for Long Manuscripts

Evaluating a 50k+ word manuscript all at once produces generic, inflated scores. The protocol:

1. **Progressive evaluation** — Evaluate at the end of each part/act, not just the final manuscript
2. **Deliberate sampling** — For each dimension, select 3-5 SPECIFIC excerpts from different parts of the book
3. **Localized evidence** — Every score must cite chapter + excerpt. Scores without location = invalid
4. **Internal comparison** — Chapter 1 and chapter 10 must be at the same level. If not, the score is that of the weaker one
5. **Recorded** — All evaluations go to PROJECT_STATE.yaml with per-dimension notes (excerpt cited + justification)

## Scale Reference

| Score | Meaning | Publishing Implication |
|-------|---------|----------------------|
| 6.0-6.5 | Amateur | Editor rejects immediately |
| 7.0-7.5 | Competent | Publishable but forgettable. Mid-list at best |
| 8.0-8.5 | Strong | Level of a book published by a major house. Competitive |
| 9.0-9.5 | Exceptional | Bestseller or award-winning level |
| 10.0 | Genre reference | Reserved for works that defined categories. Almost never given |

## Pass Criteria

- **Minimum to advance from Phase 4:** Floor >= 8.0
- **Recommended for editorial submission:** Floor >= 8.5
- **Maximum revision cycles:** 3 per evaluation round. If floor does not improve after 3 cycles, the problem is structural — return to Phase 2 (Foundation)
