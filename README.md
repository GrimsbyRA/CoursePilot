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
