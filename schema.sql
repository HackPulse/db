create extension if not exists "uuid-ossp";

create table hackathons (
  id uuid primary key default uuid_generate_v4(),
  name text not null,
  link text unique not null,
  prize text,
  accommodation text,
  paid_hotel boolean default false,
  travel_grant boolean default false,
  travel_grant_amount text,
  topic text,
  start_date date,
  end_date date,
  location text,
  organizer text,
  website_link text,
  created_at timestamp with time zone default now()
);
