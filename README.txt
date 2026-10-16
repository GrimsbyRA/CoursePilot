# CoursePilot Certificate Manager — Prototype v0.1

## What this prototype does
- Runs as a single static HTML page.
- Loads a PDF certificate template and previews its first page.
- Lets you click the preview to position learner/course/date/instructor/reference fields.
- Saves course templates in this browser's local storage.
- Supports manual learner entry and CSV import.
- Generates one PDF per learner or a ZIP of the whole class.
- Keeps a searchable, CSV-exportable local register.
- Email addresses are recorded, but actual email sending/attachments are not implemented; use your email app to attach the downloaded PDF.

## How to try it
1. Unzip the package.
2. Open `certificate-manager.html` in Chrome or Edge while connected to the internet (the PDF libraries load from CDNs).
3. Choose a blank PDF certificate template.
4. Enter the course name and click **Load and preview PDF**.
5. Choose a field, click where it should appear on the certificate, and repeat for each field.
6. Click **Save course template**. Saved templates can be reloaded from the saved-template selector in the same browser.
7. Open **Learners**, add names or import the included sample CSV.
8. Open **Generate**, then download a single PDF or a ZIP of the batch.

## Important limitations
- This is a browser-only proof of concept, not a production SaaS application.
- Template and register data are stored in the current browser's local storage; they are not synced between devices and can be lost if browser data is cleared.
- It processes page 1 of the uploaded PDF only.
- Font options and text wrapping are intentionally basic; check long names and positioning against your actual template.
- The prototype uses external CDN libraries and needs an internet connection.
- It does not include user accounts, provider data separation, secure cloud storage, subscription billing, automatic email delivery, audit controls or backups.
- Do not put real learner data into this prototype until a secure production backend and privacy controls are implemented.

## GitHub Pages
Upload `certificate-manager.html` to the root of your existing `CoursePilot` GitHub Pages repository. It should then be reachable at:
`https://grimsbyra.github.io/CoursePilot/certificate-manager.html`

Add a link to it from your existing `index.html` or `studio.html` only after testing the page. GitHub Pages publishes files in the selected source branch/folder; it does not provide a private database or backend by itself.

## Suggested production architecture
Keep the existing static front end initially. Add a managed backend (for example Supabase) for authentication, tenant-scoped database tables and storage, and use a server-side email provider for delivery. Implement subscription billing only after the PDF workflow and data separation have been tested.
