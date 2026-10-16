Supabase setup reference

Project URL configured in GITHUB-ROOT/supabase-config.js:
https://cveqdyqjnexbrlkuayoh.supabase.co

The public publishable key supplied by the owner is configured in that file. It is not a secret. Never expose a database password or service-role/secret key.

The migrations were already run successfully in the project according to screenshots:
1. 001_coursepilot_certificate_manager.sql
2. 002_trainisty_cloud_learner_records.sql
Do not rerun them just for deployment. They are included for reference and recovery.

The optional Edge Function send-certificate-email is source only; it is not deployed/configured and email delivery is not yet operational.
