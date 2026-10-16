# CoursePilot payments — owner setup guide

## Current status

The pricing page is prepared, but **payments are not live**. Its buttons stay disabled until real Stripe Payment Links are entered in `stripe-config.js`. This package does not connect to your Stripe account, create products for you, verify payment server-side, email customers, or automatically deliver files. Do not advertise checkout as active until you have completed every step below and tested it.

## Recommended first launch: £9 one-off pack with manual fulfilment

Manual fulfilment is the lowest-complexity option for the current static GitHub Pages website. The buyer pays through Stripe-hosted checkout; you verify the payment in your Stripe dashboard and then deliver the agreed pack manually. Do not rely on the public success page as proof of payment.

### A. Set up Stripe

1. Create or sign in to a Stripe account at https://stripe.com/gb and complete Stripe's identity/business verification.
2. Add your correct legal/business name, support email and business details in Stripe. Use a monitored address that you are comfortable showing customers.
3. Create a one-off product called `CoursePilot One-off Course Pack`, priced at **£9 GBP**. Write a clear description of exactly what is included, delivery timeframe, and that materials are editable starter resources requiring trainer review.
4. Create a Stripe Payment Link for that product. Collect the customer's email address. Review the checkout preview, receipt settings, statement descriptor and any tax settings applicable to your business.
5. Set the post-payment redirect URL to `https://grimsbyra.github.io/CoursePilot/payment-success.html` and the cancellation/back URL, if the Stripe link settings support it, to `https://grimsbyra.github.io/CoursePilot/payment-cancelled.html`.
6. Copy the resulting public Payment Link URL. It should begin `https://buy.stripe.com/`.
7. Open `stripe-config.js` and replace the empty value for `coursePackLink` with the real URL, retaining the quotes. Example format only: `coursePackLink: "https://buy.stripe.com/REAL_LINK_FROM_YOUR_STRIPE_DASHBOARD"`. Do not copy this example literally.
8. Keep `trainerMembershipLink` empty until the membership is fully configured and tested. Never put secret API keys, restricted keys, passwords, or customer data in this public file or repository.
9. Upload the changed `stripe-config.js` to the root of the GitHub repository and commit it.

### B. Define delivery before taking orders

1. Decide exactly what a £9 customer receives. The current Studio creates starter content in the visitor's browser; it does not send a copy of a visitor's project to you.
2. For manual fulfilment, state a realistic delivery window in checkout/product information and on the terms page. Add your monitored support email and business identity to the pricing page, Terms, Privacy Notice and Stripe receipt settings before enabling payment.
3. Choose an actual delivery process: review the paid order in Stripe, contact the customer using the email collected at checkout, gather the course brief securely, create/review the pack, and send the files. Do not ask customers to email sensitive learner records.
4. Keep a simple order log with Stripe payment ID, order date, fulfilment status and refund status. Restrict access and retain only what is needed for accounting/support.
5. Publish a clear refund, cancellation, complaint and digital-content policy, reviewed for UK consumer law. Do not use a blanket “no refunds” claim. Where digital content is supplied immediately, check the applicable consent/acknowledgement requirements and statutory rights before configuring checkout.

### C. Test before enabling publicly

1. Keep the button disabled until you have checked the product, terms, support details and delivery workflow.
2. Use Stripe's test mode and test credentials where supported. Do not make a real payment merely to test a page.
3. Check successful checkout, abandoned checkout, receipt email, redirect pages, the order appearing in Stripe, the manual fulfilment process and the refund process.
4. Confirm the price and billing frequency shown in Stripe match the pricing page exactly.
5. Once tests pass, create/confirm the live Payment Link, paste it into `stripe-config.js`, upload the file, and make a small monitored live test only if appropriate. Refund that test payment if you choose to make one, and account for any fees.
6. Check the live site on Android and desktop. Ensure the button opens Stripe's real checkout and the customer sees delivery, contact, cancellation and refund information before paying.

## Add the £19/month membership later

Do not enable the membership button until the membership has a genuine recurring benefit and you can administer it. At minimum:

1. Define monthly limits, access/usage, what happens to prior downloads, support and any fair-use restrictions.
2. Create a recurring **£19 GBP per month** Stripe product and Payment Link. Enable customer email collection and clear recurring billing terms.
3. Configure and test a customer portal or a simple, reliable cancellation process. Explain the cancellation deadline/effective date and failed-payment handling.
4. Decide how membership access is granted and revoked. GitHub Pages alone cannot securely protect a member area or verify subscription status; a public page or JS flag is not access control. If membership is only a manually fulfilled monthly service initially, disclose that and set up a process to track renewals/cancellations and fulfil each paid period.
5. Test successful first payment, renewal, failed payment, cancellation, refund and access/fulfilment changes before setting `trainerMembershipLink` in `stripe-config.js`.

## Limits of this setup

- A static GitHub Pages website cannot safely store Stripe secret keys or process payment webhooks.
- The success page is not payment verification and must never unlock products by itself.
- No automatic email delivery, account creation, secure member area, database, or automated refund handling is included.
- Never state that CoursePilot automatically checks current legislation or guarantees course compliance.
- Have your tax/accounting obligations and final legal pages reviewed for your actual business model.

## Official starting points

- Stripe UK pricing: https://stripe.com/gb/pricing
- Stripe Payment Links: https://docs.stripe.com/payment-links
- Stripe test mode: https://docs.stripe.com/testing
- UK consumer advice: https://www.gov.uk/consumer-protection-rights
