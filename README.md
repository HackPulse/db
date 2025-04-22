# 🧠 HackPulse DB Schema

This repository contains the SQL schema and future migrations for [HackPulse](https://hackpulse.vercel.app) — a daily-updated hackathon aggregator built with Supabase, Python, and Next.js.

## 🗃️ Overview

The core database is hosted on [Supabase](https://supabase.com) and is designed to store detailed information about upcoming hackathons scraped from trusted sources like Devpost, MLH, and others.

---

## 📄 Schema: `hackathons` Table

| Field                  | Type                       | Required | Description                                         |
|------------------------|----------------------------|----------|-----------------------------------------------------|
| `id`                   | `uuid`                     | ✅        | Primary key, auto-generated                         |
| `name`                 | `text`                     | ✅        | Hackathon name                                      |
| `link`                 | `text`                     | ✅        | Unique link to the hackathon website                |
| `prize`                | `text`                     | ❌        | Description of prize or reward                      |
| `accommodation`        | `text`                     | ❌        | Info about lodging or accommodation                 |
| `paid_hotel`           | `boolean`                  | ❌        | Whether hotel is covered                            |
| `travel_grant`         | `boolean`                  | ❌        | Whether a travel grant is offered                   |
| `travel_grant_amount`  | `text`                     | ❌        | Description or amount of the travel grant           |
| `topic`                | `text`                     | ❌        | Main themes or topics (e.g., AI, sustainability)    |
| `start_date`           | `date`                     | ❌        | Date when the hackathon begins                      |
| `end_date`             | `date`                     | ❌        | Date when the hackathon ends                        |
| `location`             | `text`                     | ❌        | City, venue, or full address                        |
| `organizer`            | `text`                     | ❌        | Hosting organization or company (e.g., TUM-AI)      |
| `website_link`         | `text`                     | ❌        | Secondary or alternate website link                 |
| `created_at`           | `timestamp with time zone` | ✅        | Timestamp when the row was inserted automatically   |

---

## 📂 Structure

```bash
db/
├── schema.sql         # Supabase schema definition
├── migrations/        # (empty for now — migration tracking planned)
└── README.md          # You’re here!
> 📌 Migrations are not implemented yet — but the folder is ready for versioned updates.

## 🚀 Usage

1. **Create a Supabase project**  
   Go to [https://supabase.com](https://supabase.com) and create a new project.

2. **Open the SQL Editor**  
   In your Supabase dashboard, navigate to `SQL Editor` → `New Query`.

3. **Paste and run `schema.sql`**  
   Copy the contents of `schema.sql` from this repo into the query editor and execute it to create your database schema.

4. **Verify your table**  
   Go to the `Table Editor`, open the `hackathons` table, and confirm that the fields were created as expected.

5. **Connect via Supabase Client (Python, JS, etc.)**  
   Use the project’s `anon` or `service_role` key along with the project URL to connect your app/scraper and start inserting or querying data.


## ✅ Final Setup Checklist

- [x] `schema.sql` contains the full initial schema
- [x] Supabase project created and schema executed
- [x] Database is ready for integration with the scraper
- [x] Repo is licensed under MIT
- [ ] Migrations tracking to be added as schema evolves
