# CoursePilot website prototype

## What is included
- Responsive landing page for an AI-assisted training administration service
- Features and workflow sections
- Sample output for a fictional Manual Handling Awareness course
- Proposed pricing section (£9 one-off, £19/month, £39/month)
- Course request form that generates a copyable brief locally in the browser
- Download brief as a `.txt` file
- Clear notes that AI generation, user accounts, email submission, subscriptions and payment processing are NOT connected

## Run locally
Open `index.html` in a modern browser. No build tools or API keys are required.

## Publish free using GitHub Pages
1. Sign in at https://github.com/ or create a free account.
2. Create a new **public** repository called `coursepilot`.
3. Upload `index.html` to the repository root (not inside a nested folder) and commit the file.
4. In the repository, open **Settings → Pages**.
5. Under build and deployment, choose **Deploy from a branch**.
6. Select branch `main` and folder `/ (root)`, then save.
7. Wait for the deployment. The site URL will normally look like `https://YOUR-USERNAME.github.io/coursepilot/`.

GitHub UI wording may change. A public static site is appropriate for this front-end prototype, but do not put secrets, API keys, customer data or private business information into the repository.

## How the form works
The course form creates a text brief locally in the browser. The user can copy it into an AI assistant or download it as a text file. It does not send data anywhere, save data to a server, send emails, call an AI API or take payment.

## Before accepting customers
- Validate demand and get feedback from real training providers.
- Add a backend with secure authentication, server-side validation and data minimisation.
- Add AI API integration with rate limits, cost controls and clear disclosure.
- Add a privacy notice and appropriate data retention/deletion procedures.
- Add a payment provider and subscription lifecycle handling only after testing.
- Review consumer terms, refund/cancellation rules, VAT and tax position as applicable.
- Have all safety-critical, regulated or technical training outputs reviewed by a competent subject matter expert.
- Avoid claiming accreditation, certification or legal compliance unless substantiated.
- Consider whether the business needs professional indemnity/cyber insurance.

## Suggested next technical stage
A sensible stack after demand validation:
- Frontend: Next.js + TypeScript
- Backend: server-side API routes
- Database/auth: Supabase or managed PostgreSQL with row-level security
- AI: API integration kept server-side; never expose the API key in browser JavaScript
- Billing: Stripe or equivalent, with webhooks and subscription state validation
- Monitoring: logs, rate limits, backups and error alerts

This prototype is not a production application and is not legal or regulatory advice.
