# CoursePilot — First usable product prototype

## Files
- `index.html` — public marketing website
- `studio.html` — interactive course pack builder
- `coursepilot-logo.png` — logo asset

## What works in Studio
- Course provider, title, sector, duration, audience and learning outcomes inputs
- Selectable outputs: course plan, presentation outline, quiz outline, learner handout, marketing pack, certificate template, launch checklist
- Certificate preview personalised with learner name, date, provider and signatory
- Copy current output, download the pack as a `.txt` file, print the current view
- Course suggestions and brand colour preference
- All generated content runs locally in the browser; no data is transmitted or saved online

## Important limits
This is a functional front-end prototype using templates. It does not generate a real editable PowerPoint (`.pptx`), automatically research current legislation or statistics, verify accuracy, store customer accounts, send emails, publish adverts, save project history or take payments. It does not issue accredited qualifications. All material must be reviewed by a competent trainer and authoritative sources.

## Publish both pages on GitHub Pages
1. Extract the ZIP.
2. Upload `index.html`, `studio.html`, and `coursepilot-logo.png` to the root of the existing public `CoursePilot` repository.
3. Commit the changes.
4. The main site remains `https://grimsbyra.github.io/CoursePilot/`.
5. The Studio page should be available at `https://grimsbyra.github.io/CoursePilot/studio.html`.
6. Add a navigation link to Studio from the homepage when ready, or customers can open the direct Studio link.

## Next production steps
1. Build actual `.pptx` generation and editable document exports.
2. Add a server-side research workflow using authoritative sources with source URLs and review dates.
3. Add secure accounts and saved projects.
4. Add payment processing, terms, privacy notice, refunds/cancellation handling and tax review.
5. Test accessibility, security, content quality and mobile usability.
