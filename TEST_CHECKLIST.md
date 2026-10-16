# CoursePilot end-to-end test checklist

Run these tests after uploading all files to the root of GitHub Pages. Test first on desktop if available, then on Android Chrome.

## A. Navigation and assets

- [ ] Homepage opens without a broken logo.
- [ ] Homepage **Build a course pack** opens `studio.html`.
- [ ] Pricing links open `pricing.html`.
- [ ] Studio footer links open the homepage, privacy and terms pages.
- [ ] No page shows a missing-file error.

## B. Generate a test pack

Use this test data (do not use real learner personal information):
- Provider: `Test Training Ltd`
- Course: `Manual Handling Awareness`
- Duration: `90 minutes`
- Audience: `New starters`
- Learning outcomes: `Identify manual handling risks; explain controls`
- Learner: `Alex Test`
- Signatory: `Trainer Test`

Select every output and click **Build my pack**. Confirm the status says the starter pack was generated locally.

## C. Review each tab

- [ ] Overview shows provider, course and starting references.
- [ ] Course plan tab shows a session structure.
- [ ] Presentation tab shows the outline.
- [ ] Quiz & answers tab shows questions and answer guidance.
- [ ] Learner handout tab shows a handout draft.
- [ ] Marketing tab shows course description, social posts, flyer and email copy.
- [ ] Certificate tab shows the learner, course, date and signatory.
- [ ] Launch checklist tab shows the review and launch tasks.
- [ ] Sources tab shows links and the reminder to check current versions.

## D. Download and open files

- [ ] **Download pack (.txt)** downloads a readable text file.
- [ ] **Download editable PowerPoint (.pptx)** downloads a valid file that opens in PowerPoint/LibreOffice; check speaker notes.
- [ ] **Download full pack (Word-compatible)** downloads an `.rtf` file that opens in Word/LibreOffice.
- [ ] **Download selected section** downloads the selected section and does not silently substitute another section.
- [ ] **Download certificate template** downloads HTML. Open it in a browser and use Print → Save as PDF. Check A4 landscape and certificate details.
- [ ] **Print / save as PDF** prints the selected preview rather than the whole form.
- [ ] **Copy current output** copies when clipboard permission is available; if blocked, the page explains the limitation.

## E. Selection edge case

- [ ] Uncheck one output, rebuild, select its tab and confirm the page says it was not included.
- [ ] Click download before generating and confirm it explains that you must build a pack first.

## F. Payments (do not take a live payment for testing)

- [ ] Pricing page clearly states payments are not live while link fields are blank.
- [ ] Confirm both fields in `payment-config.js` are blank until you create real links.
- [ ] Only after you have a verified Lopay link, add it and upload the config. Confirm the button opens the intended HTTPS URL.
- [ ] Do not sell the monthly membership unless recurring billing and cancellation are supported by your Lopay account and have been tested.
- [ ] Remember: the static website does not verify payment or automatically deliver files.

## Important

This is a functional prototype acceptance test, not a certification of content accuracy. Check all course-specific technical claims, law, assessment answers and source dates with a competent person before using or selling the materials.
