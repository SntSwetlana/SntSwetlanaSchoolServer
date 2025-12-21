-- This file should undo anything in `up.sql`
DELETE FROM users
WHERE auth0_id LIKE 'auth0|seed_%';