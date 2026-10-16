# CoursePilot — setup and launch guide

## 1. Publish the website

1. Download and extract the CoursePilot ZIP.
2. Open https://github.com/GrimsbyRA/CoursePilot and sign in.
3. Choose **Add file → Upload files**.
4. Upload every file from the extracted folder directly into the repository root. Do not upload the ZIP itself and do not place the files inside an extra folder.
5. Commit the changes to `main`.
6. In repository Settings → Pages, confirm deployment source is `main` and folder is `/(root)`.
7. Wait for deployment, then open the live homepage and Studio.

## 2. Test the local builder

Follow `TEST_CHECKLIST.md`. In particular, generate a pack before clicking download buttons. Check that a `.pptx`, `.rtf`, `.txt`, and certificate HTML file are downloaded and open correctly. PowerPoint speaker notes should be visible in the notes pane.

## 3. Configure payments (optional, not live by default)

Follow `PAYMENTS_SETUP.md`. The public `payment-config.js` contains empty fields. Only add real HTTPS Lopay payment links that you have created and tested in your own account. Do not add private credentials. Until configured, the page deliberately states that payments are not live.

The site cannot securely confirm payments or automatically deliver purchased files. Fulfil paid orders manually and make delivery time, contact details, refunds and terms clear before taking payment. Do not enable monthly billing unless recurring subscriptions, cancellation and failed payments are supported and tested.

## 4. Business details and policies

Before taking money, complete `privacy.html` and `terms.html` with your legal business identity and contact details. Check the registered company name/number and registered office, lawful privacy information, data retention, customer support route, delivery timeframe, refunds and cancellation terms. Get suitable legal/accounting advice if uncertain.

## 5. Honest launch position

CoursePilot is currently a browser-based template builder. It produces editable starter content, not fully researched, legally verified or accredited training. The current reference links are starting points for selected topics and are not live monitoring. Every trainer must review course content and answer keys before use. Do not claim accreditation unless authorised.


## Course balance and knowledge confirmation update (v9)
- Course balance is selectable: auto recommendation, theory-led, theory plus short assessment, 20/80, 50/50 or 80/20. This is a planning aid, not a regulatory rule.
- Knowledge test includes five multiple-choice questions with A/B/C options, answer key and short explanations for supported subject families and a generic fallback.
- Validate questions and answers against current course specification; adjust pass mark to awarding-body requirements.
- Confirm schedules, practical elements and assessment are appropriate for the selected course, learner group and delivery mode.
