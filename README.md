# CoursePilot — final testing package

Static website prototype for independent training providers. Designed to run on GitHub Pages without a server.

## Files

- `index.html` — marketing homepage and feature descriptions
- `studio.html` — local course pack builder and exports
- `pricing.html` — pricing and payment-link page
- `payment-config.js` — public configuration for your own Lopay HTTPS links (blank by default)
- `payment-success.html`, `payment-cancelled.html` — informational checkout return pages; they do not verify payments
- `privacy.html`, `terms.html` — draft policies that need your real details and review
- `pptxgen.bundle.js` — local browser library used for editable PowerPoint export
- `coursepilot-logo.png` — brand image
- `PAYMENTS_SETUP.md` — payment setup and limitations
- `SETUP_AND_LAUNCH.md` — publishing guide
- `TEST_CHECKLIST.md` — step-by-step acceptance tests

## Publish on GitHub Pages

Upload **all files in this folder** directly into the repository root (the same folder as `index.html`), not the ZIP itself and not an extra nested folder. Keep filenames exactly as provided. Enable GitHub Pages from `main` and `/(root)`.

## What works in this prototype

- Build a template-based starter pack locally in the browser
- Review course plan, presentation outline, quiz, handout, marketing, certificate, launch checklist and starting references
- Download a `.pptx` starter presentation with speaker notes
- Download the complete pack as `.txt` or Word-compatible `.rtf`, and download individual sections
- Download a certificate template as HTML and print it to PDF from a browser
- Copy current output when browser clipboard permissions allow it
- Pricing page reads your public `payment-config.js` and opens configured HTTPS payment links

## What is not implemented

No server, AI/content generation service, automatic live legislation checking, customer accounts, online saving, secure payment verification, automatic paid-file delivery, subscription entitlement management, or automatic email sending. The resources are editable drafts/starter content, not complete accredited or compliance-verified training. The membership is not ready to sell until recurring billing and cancellation are supported and tested.


## Course balance and knowledge confirmation update (v9)
- Course balance is selectable: auto recommendation, theory-led, theory plus short assessment, 20/80, 50/50 or 80/20. This is a planning aid, not a regulatory rule.
- Knowledge test includes five multiple-choice questions with A/B/C options, answer key and short explanations for supported subject families and a generic fallback.
- Validate questions and answers against current course specification; adjust pass mark to awarding-body requirements.
- Confirm schedules, practical elements and assessment are appropriate for the selected course, learner group and delivery mode.

## Knowledge test size (v10 update)
The Studio now offers an automatic recommended question count based on the selected subject and duration, or manual selection of 5, 10, 15, 20, 25, 30, 40, 50, 75 or 100 questions. The current question bank is limited: longer tests expand/reframe existing seed concepts and are not guaranteed to be unique or independently validated. Before formal use, a competent subject-matter reviewer must replace duplicates, verify answers, map questions to learning outcomes and apply the relevant pass criteria.

## Question bank update
This version adds authored, subject-focused MCQs for selected safety and workplace subjects and prevents the generator from duplicating/rephrasing a small seed set to pretend it has 50–100 unique questions. Where a requested test exceeds the available bank, the output transparently caps the test and explains the limitation. See `QUESTION_BANK_NOTES.md` and `TEST_CHECKLIST.md`. Question sets remain drafts and require subject-matter validation before formal use.
