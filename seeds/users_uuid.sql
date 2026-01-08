INSERT INTO users (auth0_id, username, full_name, email, gender) VALUES
  ('auth0|seed_anna',  'anna',  'Anna Ivanova',  'anna@example.com',  'female'),
  ('auth0|seed_boris', 'boris', 'Boris Petrov',  'boris@example.com', 'male'),
  ('auth0|seed_maria', 'maria', 'Maria Sidorova','maria@example.com', 'female'),
  ('auth0|seed_alex',  'alex',  'Alexey Kozlov', 'alex@example.com',  'male');

-- пароль "123" (bcrypt через pgcrypto)
INSERT INTO local_credentials (user_id, password_hash)
SELECT id, crypt('123', gen_salt('bf'))
FROM users
WHERE username = 'anna';

INSERT INTO local_credentials (user_id, password_hash)
SELECT id, crypt('boris', gen_salt('bf'))
FROM users
WHERE username = 'boris';

INSERT INTO local_credentials (user_id, password_hash)
SELECT id, crypt('maria123', gen_salt('bf'))
FROM users
WHERE username = 'maria';

INSERT INTO local_credentials (user_id, password_hash)
SELECT id, crypt('123alex123', gen_salt('bf'))
FROM users
WHERE username = 'alex';