-- Your SQL goes here
INSERT INTO users (auth0_id, username, full_name, email, gender) VALUES
  ('auth0|seed_anna',  'anna',  'Anna Ivanova',  'anna@example.com',  'female'),
  ('auth0|seed_boris', 'boris', 'Boris Petrov',  'boris@example.com', 'male'),
  ('auth0|seed_maria', 'maria', 'Maria Sidorova','maria@example.com', 'female'),
  ('auth0|seed_alex',  'alex',  'Alexey Kozlov', 'alex@example.com',  'male')
ON CONFLICT (auth0_id) DO NOTHING;

-- пароль "123" (bcrypt через pgcrypto)
INSERT INTO local_credentials (user_id, password_hash)
SELECT u.id, crypt('123', gen_salt('bf'))
FROM users u
WHERE u.username = 'anna'
ON CONFLICT (user_id) DO UPDATE
SET password_hash = EXCLUDED.password_hash;

INSERT INTO local_credentials (user_id, password_hash)
SELECT u.id, crypt('boris', gen_salt('bf'))
FROM users u
WHERE u.username = 'boris'
ON CONFLICT (user_id) DO UPDATE
SET password_hash = EXCLUDED.password_hash;

INSERT INTO local_credentials (user_id, password_hash)
SELECT u.id, crypt('maria123', gen_salt('bf'))
FROM users u
WHERE u.username = 'maria'
ON CONFLICT (user_id) DO UPDATE
SET password_hash = EXCLUDED.password_hash;

INSERT INTO local_credentials (user_id, password_hash)
SELECT u.id, crypt('123alex123', gen_salt('bf'))
FROM users u
WHERE u.username = 'alex'
ON CONFLICT (user_id) DO UPDATE
SET password_hash = EXCLUDED.password_hash;