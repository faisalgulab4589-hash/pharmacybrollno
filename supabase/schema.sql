-- Run in Supabase SQL editor. Keep service-role key on the server only.
create table if not exists public.students (id uuid primary key default gen_random_uuid(),roll_number text not null unique,full_name text not null,pdf_path text not null,created_at timestamptz not null default now());
create table if not exists public.slip_requests (id uuid primary key default gen_random_uuid(),roll_number text not null,student_name text not null,requester_email text not null,status text not null default 'pending' check(status in ('pending','approved','rejected')),created_at timestamptz not null default now(),reviewed_at timestamptz);
create table if not exists public.download_events(id uuid primary key default gen_random_uuid(),request_id uuid references public.slip_requests(id),downloaded_at timestamptz not null default now());
alter table public.students enable row level security;
alter table public.slip_requests enable row level security;
alter table public.download_events enable row level security;
-- No public access policies. Server-only privileged operations must validate admin identity.
-- Create a PRIVATE storage bucket named roll-slips in the Supabase dashboard.
