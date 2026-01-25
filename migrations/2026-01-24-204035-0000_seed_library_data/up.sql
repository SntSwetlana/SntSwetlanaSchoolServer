-- Your SQL goes here
-- На всякий случай
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Берём любого существующего пользователя как created_by
WITH u AS (
  SELECT id FROM users LIMIT 1
)

-- =======================
-- Publishers
-- =======================
INSERT INTO publishers (id, key, name, website, created_by)
SELECT gen_random_uuid(), 'cambridge', 'Cambridge University Press', 'https://www.cambridge.org', u.id FROM u
UNION ALL
SELECT gen_random_uuid(), 'oxford', 'Oxford University Press', 'https://global.oup.com', u.id FROM u
UNION ALL
SELECT gen_random_uuid(), 'pearson', 'Pearson', 'https://www.pearson.com', u.id FROM u
UNION ALL
SELECT gen_random_uuid(), 'macmillan', 'Macmillan Education', 'https://www.macmillanenglish.com', u.id FROM u;

-- =======================
-- Courses (УМК)
-- =======================
WITH u AS (SELECT id FROM users LIMIT 1),
p AS (SELECT id, key FROM publishers)

INSERT INTO course_series (id, publisher_id, key, title, created_by)
SELECT gen_random_uuid(), p.id, 'kid-box', 'Kid''s Box', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'super-minds', 'Super Minds', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'family-friends', 'Family and Friends', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'solutions', 'Solutions', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'big-english', 'Big English', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'academy-stars', 'Academy Stars', u.id FROM p, u WHERE p.key = 'macmillan';

-- =======================
-- Levels
-- =======================
WITH u AS (SELECT id FROM users LIMIT 1),
c AS (SELECT id, key FROM course_series)

INSERT INTO course_levels (id, course_id, level_code, title, order_index, created_by)
SELECT gen_random_uuid(), c.id, '1', 'Level 1', 1, u.id FROM c, u WHERE c.key IN ('kid-box','super-minds','family-friends','academy-stars')
UNION ALL
SELECT gen_random_uuid(), c.id, '2', 'Level 2', 2, u.id FROM c, u WHERE c.key IN ('kid-box','super-minds','family-friends','academy-stars')
UNION ALL
SELECT gen_random_uuid(), c.id, 'A1', 'A1', 1, u.id FROM c, u WHERE c.key IN ('solutions','big-english')
UNION ALL
SELECT gen_random_uuid(), c.id, 'A2', 'A2', 2, u.id FROM c, u WHERE c.key IN ('solutions','big-english');

-- =======================
-- Units
-- =======================
WITH u AS (SELECT id FROM users LIMIT 1),
l AS (SELECT id, level_code FROM course_levels)

INSERT INTO course_units (id, level_id, unit_code, title, order_index, created_by)
SELECT gen_random_uuid(), l.id, 'U1', 'Welcome Unit', 1, u.id FROM l, u
UNION ALL
SELECT gen_random_uuid(), l.id, 'U2', 'My World', 2, u.id FROM l, u
UNION ALL
SELECT gen_random_uuid(), l.id, 'U3', 'At School', 3, u.id FROM l, u;

-- =======================
-- Modules (Lessons)
-- =======================
WITH u AS (SELECT id FROM users LIMIT 1),
un AS (SELECT id FROM course_units)

INSERT INTO course_modules (id, unit_id, module_code, title, order_index, created_by)
SELECT gen_random_uuid(), un.id, 'L1', 'Vocabulary', 1, u.id FROM un, u
UNION ALL
SELECT gen_random_uuid(), un.id, 'L2', 'Grammar', 2, u.id FROM un, u
UNION ALL
SELECT gen_random_uuid(), un.id, 'L3', 'Reading', 3, u.id FROM un, u
UNION ALL
SELECT gen_random_uuid(), un.id, 'L4', 'Listening', 4, u.id FROM un, u;
