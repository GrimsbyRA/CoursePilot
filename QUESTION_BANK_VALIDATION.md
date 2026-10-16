# Question bank expansion — validation report

This build expands the six targeted banks (manual handling, first aid, working at height, COSHH, food hygiene, allergens, and forklift) with subject-specific draft principles and multiple-choice formats. The bank generator is capped at 100 questions and reports a limit rather than silently duplicating question records.

## Important quality status
- The bank includes unique stems and distinct subject principles; generated wording still uses a small set of question stem patterns.
- These are draft questions, not accredited or independently validated assessment items.
- Before use in regulated or safety-critical delivery, a competent subject-matter expert must verify each question, answer and explanation against current authoritative guidance, the relevant jurisdiction, qualification specification and learning outcomes.
- Do not use the quiz alone as proof of practical competence.
- Pass marks are configurable guidance; the course/awarding-body specification takes precedence.

## Test coverage
- ZIP integrity check
- JavaScript syntax check
- Bank-size simulation for each supported subject at 5, 10, 15, 20, 25, 30, 40, 50, 75 and 100 questions
- Duplicate-stem and answer-option checks
- Learner test separated from trainer answer key in generated quiz text

Browser-based visual/export tests must still be performed on the published GitHub Pages site before commercial launch.
