# CoursePilot — setup and launch checklist

## What is included in this package
- `index.html`: public landing page and local course-brief builder.
- `studio.html`: course pack builder with editable `.pptx` export, instructor notes, editable `.rtf` document, text export, starter quiz content for selected topics, and official starting-reference links for selected topics.
- `pptxgen.bundle.js`: local PowerPoint generation library. Keep it in the same folder as `studio.html`.
- `coursepilot-logo.png`: site logo.
- `privacy.html` and `terms.html`: draft policy pages with placeholders. These are not final legal advice and must be completed/reviewed.
- `README.md`: deployment notes.
- `pricing.html`: pricing page for a proposed £9 one-off pack and £19/month membership.
- `stripe-config.js`: blank Stripe Payment Link URL configuration. It contains no secrets.
- `payment-success.html` and `payment-cancelled.html`: basic checkout return pages.
- `PAYMENTS_SETUP.md`: payment-provider and manual delivery setup steps.

## Deploy on GitHub Pages from Android
1. Download and extract the ZIP.
2. Open https://github.com/GrimsbyRA/CoursePilot
3. Select **Add file → Upload files**.
4. Upload all website files (`index.html`, `studio.html`, `pptxgen.bundle.js`, `coursepilot-logo.png`, `privacy.html`, `terms.html`, `pricing.html`, `stripe-config.js`, `payment-success.html`, `payment-cancelled.html`) to the repository root. Upload `SETUP_AND_LAUNCH.md`, `PAYMENTS_SETUP.md` and `README.md` too if useful.
5. Replace existing files when GitHub prompts; scroll down and commit to the `main` branch.
6. Open repository **Settings → Pages**. Confirm publishing source is **Deploy from a branch**, branch `main`, folder `/(root)`.
7. Wait for the Pages deployment to complete. Check the Actions tab if it does not update.
8. Test both pages: `https://grimsbyra.github.io/CoursePilot/` and `https://grimsbyra.github.io/CoursePilot/studio.html`.

## Functional test before sharing
- Landing page loads and the logo appears.
- Build a course brief and download the `.txt` pack.
- In Studio, complete provider and course title, click **Build my pack**.
- Download the `.pptx`; open it in PowerPoint or LibreOffice and check slide layout and speaker notes.
- Download the `.rtf`; open it in Word or LibreOffice.
- Try a Manual Handling Awareness course and check the quiz and source tab; then try another topic.
- Test on Android Chrome and desktop if possible.
- Confirm links to Pricing, Privacy and Terms open. Replace all bracketed placeholders in policy pages before commercial launch.
- Confirm pricing checkout buttons remain disabled until real Stripe links are configured.

## Important current limitations
- Topic-specific quiz starters and official reference links exist for selected topics only. Unmatched courses receive a generic quiz and general reference starting points.
- The tool does not live-check legislation, independently verify all facts, or guarantee legal compliance, qualification eligibility or accreditation.
- The PowerPoint is an editable starter deck with speaker notes, not a complete finished training course. Add topic-specific teaching content, diagrams, activities, valid assessment and citations before delivery.
- No accounts, online saving, database, payment checkout, subscription management, email sending, automatic marketing publication or customer-service inbox is connected.
- The main page's course request form is local-only; it does not send a lead to you. Do not advertise it as an enquiry form that submits to CoursePilot.

## Remaining actions that require the owner
1. **Legal identity and contact:** add the actual operator name, business contact email and any required postal details to Privacy and Terms. Have the final documents reviewed for the actual business and data flows.
2. **Lead capture:** choose and configure a real enquiry route (for example, a dedicated business email/form service), test delivery and add an appropriate privacy notice. No leads are currently emailed to you.
3. **Pricing:** treat current displayed prices as proposals until scope, delivery limits and costs are confirmed.
4. **Payments/subscriptions:** follow `PAYMENTS_SETUP.md`. The static site can link to Stripe-hosted checkout, but it cannot securely verify payments, grant access, or automatically deliver a paid pack. Start with manually fulfilled one-off orders; only enable membership once renewal, cancellation and access management are tested. Do not accept payments until the delivery and customer support process is real and disclosed.
5. **Customer accounts and saved work:** requires a backend/database and authentication; GitHub Pages alone is static hosting and cannot provide secure accounts or server-side storage.
6. **Content quality:** review topic-specific source mapping and quiz answers with a competent subject-matter expert. Add a dated source-review process and course-specific material. Safety-critical or regulated content requires expert approval.
7. **Certificate service:** define what the paid design service includes, approval process, turnaround, customer proofing, file delivery, pricing and refund policy. Never imply accreditation without authority.
8. **Commercial launch:** test accessibility, mobile layout, downloads, terms, privacy, enquiry delivery, service fulfilment, backups/version control and customer support. Consider a custom domain after the flow works.

## Recommended order
Publish this static version → test downloads → complete operator/policy details → connect a real lead/contact route → validate the content and service scope → then build backend/accounts/payments if subscriptions are still required.
