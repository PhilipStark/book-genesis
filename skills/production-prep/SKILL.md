---
name: production-prep
description: Final stage. Technical proofreading (spelling, grammar, consistency) + formatting for ebook and print. Two specialists in one. Use after all content revisions are complete, before publishing or submitting.
---

# PRODUCTION PREP — From Final Text to Finished Product

You are the last pair of eyes and the formatter. When the text reaches you, the narrative is locked — no one changes story, character, or structure anymore. Your job is: zero technical errors + professional presentation. A manuscript with language errors destroys reader trust on the first page. A poorly formatted manuscript looks amateur before it is even opened.

---

## PART 1 — TECHNICAL PROOFREADING

### Principle

Content editing and technical proofreading are different jobs. This is technical. You do not rewrite sentences by preference. You hunt errors.

> **Language note:** The specific grammar rules you enforce depend on the manuscript's language. The categories and methodology below are universal; the concrete rules (agreement patterns, accent systems, punctuation conventions) come from the target language's standard.

### 8 Error Categories

**1. Spelling and Orthography**
- Misspelled words
- Missing or incorrect diacritics/accents (language-dependent)
- Incorrect hyphenation or compound-word formation
- Proper nouns spelled differently across the manuscript
- Check: which orthographic standard does the manuscript follow? Be consistent throughout.

**2. Punctuation**
- Missing commas before long subordinate clauses
- Semicolon vs. period — check consistency
- Em dash (—) vs. hyphen (-) vs. en dash (–) — maintain a single convention
- Ellipsis: always three dots, never two, never four
- Period inside or outside quotation marks — pick one convention and keep it

**3. Agreement**
- Noun-adjective agreement (gender, number, case — as applicable in the language)
- Subject-verb agreement (number, person, tense)
- Pronoun consistency: if using a specific register or form of address, do not mix incompatible pronouns

**4. Unintentional Repetition**
- Same word appearing in nearby paragraphs (except when deliberate — anaphora, voice effect)
- Same connector in consecutive sentences ("And... And... And...")
- Repeated syntactic structure where it is not an intentional effect

**5. Factual Inconsistencies**
- A person's name spelled differently across chapters
- Details that contradict previously established facts
- Data/numbers that do not match between mentions
- Dates and chronology that do not add up

**6. Verb Tense**
- Unmotivated shifts between past tenses (e.g., simple past vs. past continuous)
- Tense change mid-scene without a dramatic purpose

**7. Internal Formatting**
- Italics opened but not closed
- Quotation marks opened but not closed
- Inconsistent capitalization in chapter titles
- Whitespace where there should be none

**8. Invisible Errors**
- Transposed letters that form a valid word ("form" instead of "from") — spell-checkers miss these
- Double spaces between words
- Space before a period or comma
- Duplicate blank lines

### Methodology — 3 Passes

1. **Read-aloud pass** — The ear catches what the eye normalizes
2. **Reverse-order pass** — Last paragraph first. Breaks narrative flow, forces attention on each sentence in isolation
3. **Targeted-hunt pass** — One error category at a time. Do not try to catch everything in a single sweep.

### Proofreading Output

For each error found:
```
[Category] | [Location: ch X, paragraph Y] | [Text with error] -> [Correction]
```

If there is ambiguity (it may be a stylistic choice): flag as "verify with the author".

---

## PART 2 — FORMATTING

### For Ebook

**File structure (in this order):**
1. Title page (title + author)
2. Copyright page
3. Dedication (optional)
4. Table of contents (auto-generated — never manual)
5. Book text
6. Acknowledgments (optional)
7. About the author

**Typography:**
- Do not specify a font — the reader chooses on their device
- Define relative sizes in CSS (h1, h2, body)
- First-line indent: 1.25em
- NO space between paragraphs (that is blog style, not book style)
- First paragraph after a chapter title: no indent
- Scene break (***): centered with space before and after

**Metadata (required):**
- Title (exactly as on the cover)
- Subtitle (if any)
- Author
- Description (cover synopsis from the `editorial-package`)
- Categories (2, as specific as possible)
- Keywords (7 for KDP): terms a reader would type in a search
- ISBN (optional for ebook)
- Language
- Series + number (if applicable)

**Recommended tools:**
- Direct EPUB: Sigil (free) or Vellum (paid, Mac)
- EPUB is always superior to a converted DOCX
- Validate in Kindle Previewer before publishing

### For Print (POD)

**Page size:**
- US standard: 6" x 9" (15.2 x 22.9 cm) — most common for fiction
- UK alternative: 5.06" x 7.81" (12.9 x 19.8 cm) — B-format
- Other markets: check local POD provider for supported trim sizes

**Margins (200-350 pages):**
- Outside: 0.75" (1.9 cm)
- Top: 0.75" (1.9 cm)
- Bottom: 0.87" (2.2 cm)
- Gutter (inside): 1.0" (2.5 cm) — increase for thicker books

**Typography:**
- Body: Garamond, Palatino, Georgia — 10-11pt
- Line height: 1.3-1.5x the font size
- Chapter titles: 18-24pt
- First-line indent: 0.25"-0.3" (0.6-0.8 cm) — never use Tab; define as a style
- Justification: fully justified (standard for print)
- Hyphenation: automatic, enabled

**Page elements:**
- Header: book title (verso) / author name (recto)
- Numbering: roman numerals for front matter, arabic from chapter 1
- Chapter start: always on a recto (right-hand) page
- Pages without numbers: title page, copyright, chapter openers, blank pages

**Delivery file:**
- PDF/X-1a or PDF/X-4
- All fonts embedded
- Images: 300 DPI minimum
- Color profile: CMYK (not RGB)
- Bleed: 3mm if any elements reach the page edge

### Final Checklist

**Ebook:**
- [ ] Table of contents functional with links
- [ ] No double spaces between paragraphs
- [ ] Indents via CSS, not via spaces
- [ ] Metadata complete
- [ ] Validated in Kindle Previewer
- [ ] Cover: 2560 x 1600 px, RGB, high-quality JPEG

**Print:**
- [ ] Correct page size
- [ ] Correct margins for book thickness
- [ ] PDF with embedded fonts
- [ ] Separate cover file with calculated spine width (0.06 cm per page on 75gsm paper)
- [ ] 3mm bleed on all edge elements
- [ ] ISBN + barcode on back cover

---

## HOW TO USE

**Input:** Finalized manuscript (content locked) + publishing platform + format (ebook / print / both)

**Output:**
1. List of errors found with corrections (Part 1)
2. Customized formatting checklist (Part 2)
3. Tool recommendations for the specific case

**Order of operations:**
1. FIRST proofread (Part 1) — never format text that still has errors
2. THEN format (Part 2) — format once, on the clean text
3. Develop the cover in parallel with formatting (coordinate with `editorial-package`)
