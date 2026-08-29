-- 校招记录 · Supabase 初始化脚本
-- 使用方法：Supabase 控制台 → 左侧 SQL Editor → New query → 粘贴全部 → 点 Run

-- 1. 数据表
create table if not exists public.records (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  date text,
  company text,
  position text,
  progress text,
  rejected boolean not null default false,
  knowledge jsonb not null default '[]'::jsonb,
  knowledge_done jsonb not null default '[]'::jsonb,
  created_at timestamptz not null default now()
);

-- 2. 索引
create index if not exists records_user_idx on public.records(user_id);

-- 3. 行级安全（RLS）：每个人只能看到/操作自己的数据
alter table public.records enable row level security;

drop policy if exists "records_select_own" on public.records;
create policy "records_select_own" on public.records
  for select using (auth.uid() = user_id);

drop policy if exists "records_insert_own" on public.records;
create policy "records_insert_own" on public.records
  for insert with check (auth.uid() = user_id);

drop policy if exists "records_update_own" on public.records;
create policy "records_update_own" on public.records
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "records_delete_own" on public.records;
create policy "records_delete_own" on public.records
  for delete using (auth.uid() = user_id);
