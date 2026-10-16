# CoursePilot website package — prototype v2

Upload the contents of this folder (not the ZIP itself) into the root of the GitHub repository `GrimsbyRA/CoursePilot`, replacing the existing `index.html`, `studio.html`, and `coursepilot-logo.png`, and adding `pptxgen.bundle.js`.

Files:
- `index.html` — public landing page
- `studio.html` — course pack builder
- `coursepilot-logo.png` — logo used on the site
- `pptxgen.bundle.js` — local PowerPoint generation library required for editable `.pptx` downloads

After GitHub Pages deploys, visit:
- Website: https://grimsbyra.github.io/CoursePilot/
- Studio: https://grimsbyra.github.io/CoursePilot/studio.html

## New in v2
- Generates an editable PowerPoint `.pptx` in the browser, including a title slide, session outline slides, and instructor notes.
- Downloads a Word-compatible editable `.rtf` document containing the selected starter pack outputs.
- Keeps the existing text pack download, copy and print features.
- The PowerPoint library is included locally, so generation does not depend on loading that library from a third-party CDN.

## Important limitations
This remains a static front-end prototype. Course content is template-based and not independently researched or verified. The generated PowerPoint is an editable starter presentation, not a finished or validated course. Trainer must add and verify subject-specific content, examples, assessments, source references, accessibility provisions and current legal/technical requirements before delivery. The RTF document is editable in Word-compatible software. No customer accounts, online project saving, payments, email sending, publishing integrations or server-side generation are included. Learner information entered in the form stays in the browser and is not sent to a server by this prototype.

## Mobile upload steps
1. Download and extract `coursepilot_product_prototype_v2.zip` on your phone.
2. Open the GitHub repository `https://github.com/GrimsbyRA/CoursePilot`.
3. Upload/replace the four files listed above at the repository root.
4. Commit the changes and wait a minute or two for Pages to update.
5. Open the Studio link and generate a pack. Build the pack first, then use the new PowerPoint or document download button.
