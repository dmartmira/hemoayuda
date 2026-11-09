-- HemoAyuda · esquema de base de datos para Supabase
-- Pégalo ENTERO en Supabase > SQL Editor > New query > Run.
-- Se puede ejecutar más de una vez sin problema.

-- 1) Función que actualiza la fecha de modificación
create or replace function public.set_updated_at()
returns trigger
language plpgsql
set search_path = ''
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

-- 2) Tablas
create table if not exists public.episodes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  status text,
  date date,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  data jsonb not null
);

create table if not exists public.medications (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  kind text,
  date date,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  data jsonb not null
);

create table if not exists public.sos_profile (
  user_id uuid primary key default auth.uid() references auth.users(id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

create index if not exists episodes_user_id_idx on public.episodes (user_id);
create index if not exists medications_user_id_idx on public.medications (user_id);

-- 3) Fecha de modificación automática
drop trigger if exists episodes_set_updated_at on public.episodes;
create trigger episodes_set_updated_at before update on public.episodes
  for each row execute function public.set_updated_at();

drop trigger if exists medications_set_updated_at on public.medications;
create trigger medications_set_updated_at before update on public.medications
  for each row execute function public.set_updated_at();

drop trigger if exists sos_profile_set_updated_at on public.sos_profile;
create trigger sos_profile_set_updated_at before update on public.sos_profile
  for each row execute function public.set_updated_at();

-- 4) Seguridad: cada persona solo ve y modifica SUS datos
alter table public.episodes    enable row level security;
alter table public.medications enable row level security;
alter table public.sos_profile enable row level security;

drop policy if exists episodes_owner on public.episodes;
create policy episodes_owner on public.episodes
  for all to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

drop policy if exists medications_owner on public.medications;
create policy medications_owner on public.medications
  for all to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

drop policy if exists sos_profile_owner on public.sos_profile;
create policy sos_profile_owner on public.sos_profile
  for all to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

-- 5) Nadie sin iniciar sesión puede tocar las tablas
revoke all on public.episodes, public.medications, public.sos_profile from anon;
grant select, insert, update, delete on public.episodes, public.medications, public.sos_profile to authenticated;
