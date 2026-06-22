create table if not exists public.amx_hub_store (
  store_key text primary key,
  payload jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.amx_hub_store enable row level security;

revoke all on public.amx_hub_store from anon, authenticated;
