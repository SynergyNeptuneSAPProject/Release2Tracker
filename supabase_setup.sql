-- Run this once in Supabase → SQL Editor → New query
-- Then click "Run"

-- 1. Create the table
create table if not exists project_data (
  id text primary key,
  rows jsonb not null default '[]'::jsonb,
  updated_by text,
  updated_at timestamptz default now()
);

-- 2. Enable Realtime on this table
alter publication supabase_realtime add table project_data;

-- 3. Allow public read/write (no login required for the team)
create policy "Allow all" on project_data
  for all using (true) with check (true);

alter table project_data enable row level security;
