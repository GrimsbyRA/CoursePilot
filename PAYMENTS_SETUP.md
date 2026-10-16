# CoursePilot payments setup (Lopay)

## Current state

The website can display prices, but checkout is deliberately not live until you add your real Lopay links. This ZIP does not contain your account credentials and cannot create links inside your Lopay account. Do not accept payments until the checkout, delivery, refund and contact process has been tested.

## Create the one-off £9 link

1. Sign in to your existing Lopay business account.
2. Create a payment link/payment request for the CoursePilot One-off Course Pack at £9.
3. Confirm the displayed business identity, payment description, currency, customer contact details, and any fees/terms in Lopay.
4. Copy the resulting HTTPS payment URL. Do not use a dashboard URL or share credentials.
5. Open `payment-config.js` and paste the URL between the quotes after `coursePackLink:`.
6. Save the file and upload it to the root of your GitHub repository.
7. Open `pricing.html` on the live site and test the button. If possible, first use any sandbox/test mode available in your Lopay account. If the account only supports live payments, do not run a real transaction until the terms and fulfilment process are ready.

## Monthly membership

Do not advertise or enable the £19/month plan unless your Lopay account explicitly supports recurring subscriptions for your account and you have tested renewal, cancellation and failed-payment handling. If you can create a recurring link, put its HTTPS URL in `trainerMembershipLink:`. If not, leave it blank and keep the plan marked as not available yet.

## Important limitations

- The site is static GitHub Pages. It does not receive a secure payment webhook, create customer accounts, unlock paid content, or automatically deliver files.
- The current fulfilment method is manual: confirm the order in Lopay, collect/confirm the customer's delivery email through an appropriate process, and send the agreed pack yourself.
- Do not put private API keys, passwords, bank details or customer data in `payment-config.js` or any public repository file.
- Add your correct legal business name, company number, registered office, contact email, delivery timeframe and reviewed refund/cancellation terms before accepting payment.
