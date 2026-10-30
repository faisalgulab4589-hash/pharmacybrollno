# Pharmacy B Roll Number Slip Portal

Early-stage Next.js + Supabase starter for Ghazali College of Pharmacy.

## Current functionality
Student-facing request form; server-side request validation; pending requests saved to Supabase. Database schema for student PDF mapping and download audit events.

## Not implemented yet
Admin authentication and approval UI, PDF upload, email verification/delivery, secure signed downloads, actual download tracking, rate limiting, deployment. **Do not use with real student records until these are implemented and tested.**

## Setup
1. Create Supabase project and run supabase/schema.sql in SQL Editor.
2. Create a **private** storage bucket named roll-slips.
3. Copy .env.example to .env.local and fill the values. Never commit secrets.
4. Run npm install then npm run dev.
5. Deploy to Vercel after testing. Configure environment variables in Vercel settings.

The repository is public. Never commit PDFs, CNICs, student photos, credentials, or real student data. Merely entering an email does not verify ownership. Approval alone cannot prove who submitted a request. Use verified email links and private signed URLs for downloads.
