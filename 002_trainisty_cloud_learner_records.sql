-- Trainisty cloud learner records, scoped to the signed-in provider.
-- Run after 001_coursepilot_certificate_manager.sql in Supabase SQL Editor.
create table if not exists public.learner_records (
  id uuid primary key default gen_random_uuid(),
  provider_id uuid not null references auth.users(id) on delete cascade,
  record_key text not null,
  record_data jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(provider_id, record_key)
);
create index if not exists learner_records_provider_idx on public.learner_records(provider_id);
-- Keep learner display name with the certificate metadata for cross-device register views.
alter table public.certificates add column if not exists learner_name text;
alter table public.learner_records enable row level security;
drop policy if exists "provider manages own learner records" on public.learner_records;
create policy "provider manages own learner records" on public.learner_records
 for all to authenticated using (provider_id = (select auth.uid()))
 with check (provider_id = (select auth.uid()));
-- Prevent accidental public access: no anon policy is created.
