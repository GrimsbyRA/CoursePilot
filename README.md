# CoursePilot website package — v3 starter

Upload the website files from this folder to the root of the GitHub repository `GrimsbyRA/CoursePilot`.

## Website files
- `index.html` — public landing page and local course brief builder
- `studio.html` — course pack builder
- `pptxgen.bundle.js` — required local library for PowerPoint export
- `coursepilot-logo.png` — logo
- `privacy.html` — draft privacy notice (complete placeholders and review before launch)
- `terms.html` — draft terms of use (complete placeholders and review before launch)
- `pricing.html` — proposed £9 one-off pack and £19/month membership pricing; checkout buttons remain disabled until configured
- `stripe-config.js` — public Payment Link URL settings only; never put Stripe secret keys here
- `payment-success.html` and `payment-cancelled.html` — basic post-checkout pages for use after Stripe is configured
- `PAYMENTS_SETUP.md` — step-by-step Stripe and manual fulfilment setup

`SETUP_AND_LAUNCH.md` contains mobile deployment steps, functional tests, limitations and the remaining owner-only actions.

## Studio capabilities
- Editable `.pptx` starter deck with instructor notes
- Editable Word-compatible `.rtf` course pack
- Text pack download, copy and print
- Starter quiz questions for selected topics
- Official reference links for selected topics and a source-review checklist
- Certificate preview and marketing drafts

## Important
This remains a static front-end prototype. It does not live-verify current legislation or guarantee technical accuracy, legal compliance, accreditation or assessment validity. The generated presentation is a starter deck, not a finished course. No account system, online saving, lead delivery, email sending, payments, subscription management or publishing integrations are connected until you configure external services. Pricing buttons are deliberately disabled until real Stripe Payment Links are added. The landing-page request form does not submit information to the operator. Do not advertise it as a working customer lead form until a real submission route is configured and tested.

## URLs after publishing
- https://grimsbyra.github.io/CoursePilot/
- https://grimsbyra.github.io/CoursePilot/studio.html
- https://grimsbyra.github.io/CoursePilot/privacy.html
- https://grimsbyra.github.io/CoursePilot/terms.html
- https://grimsbyra.github.io/CoursePilot/pricing.html
- https://grimsbyra.github.io/CoursePilot/payment-success.html
- https://grimsbyra.github.io/CoursePilot/payment-cancelled.html
