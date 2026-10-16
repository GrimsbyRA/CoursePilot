-- Trainisty Certificate Manager: Supabase schema starter
-- Run in Supabase SQL Editor on a NEW project after reviewing this file.
-- This sets up tenant-scoped tables and storage metadata; it does not by itself
-- connect the current browser-only prototype to Supabase.

create extension if not exists pgcrypto;

create table if not exists public.provider_profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  provider_name text not null,
  created_at timestamptz not null default now()
);

create table if not exists public.course_templates (
  id uuid primary key default gen_random_uuid(),
  provider_id uuid not null references public.provider_profiles(id) on delete cascade,
  course_name text not null,
  template_name text not null,
  template_storage_path text,
  field_positions jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.learners (
  id uuid primary key default gen_random_uuid(),
  provider_id uuid not null references public.provider_profiles(id) on delete cascade,
  learner_name text not null,
  email text,
  employer text,
  created_at timestamptz not null default now()
);

create table if not exists public.certificates (
  id uuid primary key default gen_random_uuid(),
  provider_id uuid not null references public.provider_profiles(id) on delete cascade,
  template_id uuid references public.course_templates(id) on delete set null,
  learner_id uuid references public.learners(id) on delete set null,
  certificate_number text not null,
  course_title text not null,
  completion_date date,
  expiry_date date,
  instructor text,
  examiner text,
  status text not null default 'draft' check (status in ('draft','issued','revoked')),
  pdf_storage_path text,
  recipient_email text,
  issued_at timestamptz,
  created_at timestamptz not null default now(),
  unique(provider_id, certificate_number)
);

create index if not exists course_templates_provider_idx on public.course_templates(provider_id);
create index if not exists learners_provider_idx on public.learners(provider_id);
create index if not exists certificates_provider_idx on public.certificates(provider_id);
create index if not exists certificates_number_idx on public.certificates(certificate_number);

alter table public.provider_profiles enable row level security;
alter table public.course_templates enable row level security;
alter table public.learners enable row level security;
alter table public.certificates enable row level security;

-- Authenticated providers can access only rows owned by their own user ID.
create policy "provider reads own profile" on public.provider_profiles
 for select to authenticated using (id = (select auth.uid()));
create policy "provider inserts own profile" on public.provider_profiles
 for insert to authenticated with check (id = (select auth.uid()));
create policy "provider updates own profile" on public.provider_profiles
 for update to authenticated using (id = (select auth.uid())) with check (id = (select auth.uid()));

create policy "provider manages own templates" on public.course_templates
 for all to authenticated using (provider_id = (select auth.uid()))
 with check (provider_id = (select auth.uid()));
create policy "provider manages own learners" on public.learners
 for all to authenticated using (provider_id = (select auth.uid()))
 with check (provider_id = (select auth.uid()));
create policy "provider manages own certificates" on public.certificates
 for all to authenticated using (provider_id = (select auth.uid()))
 with check (provider_id = (select auth.uid()));

-- Private storage bucket for certificate PDFs and uploaded templates.
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('trainisty-private', 'trainisty-private', false, 15728640, array['application/pdf'])
on conflict (id) do nothing;

-- Expected storage object path format: <auth-user-uuid>/<folder>/<filename>
create policy "provider reads own private certificate files" on storage.objects
 for select to authenticated using (
   bucket_id = 'trainisty-private'
   and (storage.foldername(name))[1] = (select auth.uid())::text
 );
create policy "provider uploads own private certificate files" on storage.objects
 for insert to authenticated with check (
   bucket_id = 'trainisty-private'
   and (storage.foldername(name))[1] = (select auth.uid())::text
 );
create policy "provider updates own private certificate files" on storage.objects
 for update to authenticated using (
   bucket_id = 'trainisty-private'
   and (storage.foldername(name))[1] = (select auth.uid())::text
 ) with check (
   bucket_id = 'trainisty-private'
   and (storage.foldername(name))[1] = (select auth.uid())::text
 );
create policy "provider deletes own private certificate files" on storage.objects
 for delete to authenticated using (
   bucket_id = 'trainisty-private'
   and (storage.foldername(name))[1] = (select auth.uid())::text
 );

-- IMPORTANT: review policies and test with two separate accounts before real data.
