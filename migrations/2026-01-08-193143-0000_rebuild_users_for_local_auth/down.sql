DROP TABLE IF EXISTS local_credentials;

DROP INDEX IF EXISTS idx_users_username;

ALTER TABLE users
  DROP COLUMN IF EXISTS username,
  DROP COLUMN IF EXISTS full_name,
  DROP COLUMN IF EXISTS gender;
