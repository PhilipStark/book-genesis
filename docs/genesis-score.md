# Genesis Score — Methodology

The Genesis Score is a quantitative evaluation system for manuscripts. It measures 10 dimensions with different weights, producing a single weighted average that determines whether the manuscript is ready to advance.

## Dimensions

### 1. Originality (Weight: 1.2)

**What it measures:** Premise novelty, approach freshness, trope subversion. Has the reader encountered something like this before?

| Score | Meaning |
|-------|---------|
| 9.0+ | Literary prize level — genuinely new contribution to the genre |
| 8.0-8.9 | Good but with clear precedents |
| 7.0-7.9 | Competent execution of familiar territory |
| < 7.0 | Derivative |

### 2. Theme (Weight: 1.1)

**What it measures:** Thematic depth across 4 levels:
- **Level 1 — Surface:** The question the plot asks
- **Level 2 — Personal:** The question the protagonist faces
- **Level 3 — Universal:** The question the reader takes home
- **Level 4 — Philosophical:** The question with no answer (where the surreal lives)

| Score | Meaning |
|-------|---------|
| 9.0+ | Stays with the reader for weeks |
| 8.0-8.9 | Present but not transformative |
| < 8.0 | Underdeveloped or preachy |

### 3. Characters (Weight: 1.2)

**What it measures:** Psychological depth — wounds, arcs, contradictions, unique voice. Would the reader think about these characters years later?

Key elements evaluated:
- Central wound and the (partially wrong) conclusion drawn from it
- Conscious desire vs. unconscious need
- The lie the character believes
- 3-5 internal contradictions
- Voice distinctiveness (could you identify who's speaking without names?)
- Transformation arc (beginning → turning point → end)

### 4. Prose (Weight: 1.0)

**What it measures:** Sentence-level quality. Imagery, rhythm, precision, language originality.

Red flags: emotion adjectives ("said angrily"), exposition in dialogue ("As you know, John..."), cliches, overwriting.

### 5. Pacing (Weight: 0.8)

**What it measures:** Tension curve, peaks and valleys, page-turner quality.

The tension must never be linear. Continuous escalation desensitizes the reader. Strategic relief is as important as tension.

### 6. Emotion (Weight: 1.0)

**What it measures:** The reader's emotional journey. Investment in characters, catharsis moments, emotional variety.

The 7 primary emotions of fiction:
1. Tension — something might go wrong
2. Hope — things might improve
3. Fear — something threatens what the reader loves
4. Joy/Relief — the threat passed
5. Sadness/Grief — real loss
6. Anger/Indignation — injustice
7. Wonder/Awe — the world is bigger than imagined

### 7. Coherence (Weight: 0.8)

**What it measures:** Internal consistency — characters, worldbuilding, timeline, tone. Zero plot holes.

### 8. Market (Weight: 0.7)

**What it measures:** Commercial positioning, comp titles, target audience clarity, word count viability.

### 9. Voice (Weight: 1.0)

**What it measures:** Authorial identity, stylistic signature. Is this author recognizable from the prose alone?

### 10. Surreal (Weight: 1.2)

**What it measures:** Integration of the surreal register. Is it organic, functional, revelatory? Or is it decoration?

The surreal must serve at least one of the 5 chapter obligations (plot, character, emotion, theme, surreal integration). If it exists "because it's beautiful" but doesn't reveal theme, character, or emotion, it's decoration and should be cut.

## Calculation

```
Genesis Score = Sum(dimension_score * dimension_weight) / 10.0
```

Total weights sum to 10.0.

## Approval Criteria

Both must be true:
- **Weighted average > 9.0**
- **No individual dimension < 8.0**

If either fails, the manuscript enters the Directed Revision loop (Phase 5).

## Revision Protocol

1. Order dimensions from weakest to strongest
2. For each dimension below 9.0 (starting from weakest):
   - Identify specific chapters where the dimension fails
   - List concrete interventions (not generic — "rewrite paragraph X of chapter Y with technique Z")
   - Execute interventions
   - Verify changes didn't harm other dimensions
3. Re-score after each revision cycle
4. Maximum 5 iterations before escalating to the user

## Example: Real Scoring Progression

From *Protocolo Nao Encontrado* (proof-of-concept book):

```
                  Iter.1    Iter.2    Iter.3
Originality        8.7       8.9       9.0      (x1.2)
Theme              9.0       9.1       9.1      (x1.1)
Characters         8.5       9.0       9.1      (x1.2)
Prose              8.5       9.0       9.1      (x1.0)
Pacing             8.2       8.7       9.0      (x0.8)
Emotion            8.7       9.0       9.1      (x1.0)
Coherence          9.0       9.0       9.0      (x0.8)
Market             8.5       8.7       8.9      (x0.7)
Voice              9.0       9.0       9.0      (x1.0)
Surreal            8.8       9.0       9.0      (x1.2)
─────────────────────────────────────────────────
WEIGHTED AVG       8.70      8.95      9.04
STATUS             FAIL      FAIL      PASS
```

Key improvements between iterations:
- **Iter.1 → Iter.2:** Added sensory scenes to Part II, deepened secondary characters, varied Kafkaesque formats mid-chapter. Expanded from ~52k to ~58k words.
- **Iter.2 → Iter.3:** Expanded three shortest chapters (Cap 1, 6, 10). Pacing jumped +0.3. Final word count: ~60.8k.
