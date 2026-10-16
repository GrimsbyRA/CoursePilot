COURSEPILOT — COMPLETE WEBSITE UPDATE BUNDLE

This bundle integrates the Certificate Builder into the supplied CoursePilot homepage and Studio.

FILES TO PUBLISH
- site/index.html (updated homepage with navigation and a tools directory)
- site/studio.html (existing Studio with links to Home and Certificate Builder)
- site/certificate-manager.html (browser-based Certificate Builder)
- site/aw-certificate-template-blank.pdf (blank sample certificate PDF)
- site/sample-learners.csv (CSV import example)
- site/coursepilot-logo.png (simple placeholder brand icon; replace with your official logo if available)
- site/pricing.html, site/privacy.html and site/terms.html (starter support pages; review and replace with your final business/legal wording)

DEPLOY TO GITHUB PAGES
1. Back up the existing repository first.
2. Copy the contents of the site/ folder into the root of the existing GitHub Pages branch. This bundle includes starter pricing/privacy/terms pages; if your repository already has final versions, keep those instead of overwriting them.
3. Replace index.html and studio.html with the updated versions in this bundle. Keep all other existing files and folders; do not delete assets, configuration, or other pages. Add the new certificate-manager.html, PDF and CSV files.
4. Commit and push to the branch used by GitHub Pages.
5. After publishing, test: /CoursePilot/, /CoursePilot/studio.html and /CoursePilot/certificate-manager.html.

IMPORTANT LIMITATIONS
- This is prepared from the index.html and studio.html files supplied in this conversation; any newer live changes not included in those uploads will not be reflected.
- Certificate Builder is a browser-only prototype. Templates/register data use browser storage. Cloud accounts, secure shared storage, subscription billing and automatic email delivery are not connected. Do not use real learner data for commercial multi-customer operation until backend integration, privacy/security review and end-to-end tests are completed.
- External libraries may need internet access. The Studio loads JSZip and PptxGenJS from public CDNs; certificate generation also uses public CDN libraries. The included logo is a simple placeholder, not an original brand asset.
- This bundle has not been deployed to GitHub and the live URL has not been verified after deployment.

BACKEND STARTER FILES
The supabase/ files are planning/starter materials only. They are not connected to the current front-end and are not ready to be treated as a complete production backend.
