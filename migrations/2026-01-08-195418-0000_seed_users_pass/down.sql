-- This file should undo anything in `up.sql`

DELETE FROM local_credentials
WHERE user_id IN (
  SELECT id FROM users WHERE auth0_id LIKE 'auth0|seed_%'
);

DELETE FROM users
WHERE auth0_id LIKE 'auth0|seed_%';
