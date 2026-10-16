# CoursePilot Certificate Manager — deployment bundle

## Included
- `site/certificate-manager.html`: current browser-only certificate-generation prototype.
- `site/aw-certificate-template-blank.pdf`: blank TIS Abrasive Wheels certificate template.
- `site/sample-learners.csv`: sample class list.
- `site/ADD-TO-NAVIGATION.html.txt`: snippet to add a navigation link to the existing website.
- `supabase/migrations/001_coursepilot_certificate_manager.sql`: starter database schema, row-level security policies and private storage bucket.
- `supabase/functions/send-certificate-email/index.ts`: authenticated email-function starter using Resend and short-lived private download links.
- `supabase/ENVIRONMENT-VARIABLES.example.txt`: environment variable names only; no secrets included.

## Important: this is not yet a fully operational commercial SaaS
The current `certificate-manager.html` is still a browser-only prototype. It stores templates/register data in localStorage and generates PDFs in the browser. It does NOT yet connect to the Supabase database, require customer login, save generated PDFs to private storage, or invoke the email function. Do not advertise or use it for real multi-provider customer accounts until that integration is implemented and tested.

The SQL and Edge Function are production-oriented starter components, not proof that a secure deployment is complete. They require review and end-to-end testing.

## Static website deployment
1. Back up the existing GitHub repository/branch.
2. Copy the files inside `site/` into the root of the existing GitHub Pages source branch. Do not replace the existing `index.html`, `studio.html`, assets or configuration files.
3. Add the navigation link snippet to the existing site navigation.
4. Commit and push changes to the existing repository.
5. Test `https://grimsbyra.github.io/CoursePilot/certificate-manager.html`.

GitHub Pages can serve the front-end files but cannot itself run a private database, securely protect customer data, or send email.

## Backend setup (Supabase + Resend)
1. Create a Supabase project and enable email/password authentication.
2. Review and run `001_coursepilot_certificate_manager.sql` in the Supabase SQL Editor.
3. Configure the app to use Supabase Auth and database tables. This integration is NOT present in the included prototype and must be implemented before live customer use.
4. Store generated PDFs and uploaded template PDFs in the private `coursepilot-private` bucket under paths starting with the authenticated user's UUID, for example `<user-uuid>/certificates/<filename>.pdf`.
5. Configure and deploy the Edge Function. Set secrets using Supabase CLI/secrets tooling, never in public HTML:
   - `RESEND_API_KEY`
   - `CERTIFICATE_FROM_EMAIL`
   - `ALLOWED_ORIGIN`
   Supabase supplies `SUPABASE_URL` and `SUPABASE_ANON_KEY` to Edge Functions in its environment.
6. Verify the sender domain with Resend.
7. Wire the front-end to upload the PDF, insert the certificate row and call `send-certificate-email`. The function expects the certificate row to exist and its `pdf_storage_path` to match.
8. Add subscription billing only after account isolation and certificate creation are tested. Stripe checkout/webhooks and subscription enforcement are not included.

## Required acceptance tests before launch
- Two separate provider accounts cannot read or modify each other's templates, learners, certificates or files.
- Signed-out visitors cannot read private records/files.
- Generate PDFs for 1, 10 and 30 learners; verify all fields and long names against the original certificate.
- Certificate numbers are unique per provider and duplicate numbers are rejected.
- Email only sends a certificate belonging to the authenticated provider; links expire.
- Verify invalid email, failed email provider, expired session, malformed CSV and missing template handling.
- Backups, deletion/retention policy, privacy notice, terms, support contact and incident process are ready.
- Review the schema, RLS and function with a competent developer/security reviewer before storing personal data.

## Security notes
- Never expose a Supabase `service_role` key in HTML/JavaScript.
- Treat learner names and emails as personal data; use real learner data only after the production backend and privacy controls are live.
- The current prototype's browser storage is not synced between devices and may be lost when browser data is cleared.
