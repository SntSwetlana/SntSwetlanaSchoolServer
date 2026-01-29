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
UNION ALL
SELECT gen_random_uuid(), 'express publishing', 'Express Publishing', 'https://www.expresspublishing.com', u.id FROM u;
UNION ALL
SELECT gen_random_uuid(), 'nation geographics', 'Nation Geographics', 'https://www.nationgeographics.com', u.id FROM u;

-- =======================
-- Courses (УМК)
-- =======================
WITH u AS (SELECT id FROM users LIMIT 1),
p AS (SELECT id, key FROM publishers)

INSERT INTO course_series (id, publisher_id, key, title, created_by)
SELECT gen_random_uuid(), p.id, 'story-fun', 'Story Fun', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'prepare', 'Prepare', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'complete', 'Complete', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'empower', 'Empower', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'objective-proficiency', 'Objective Proficiency', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'open-world', 'Open World', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'compact-first', 'Compact First', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'certificate-in-advanced-english', 'Certificate in Advanced English', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'certificate-in-professional-english', 'Certificate in Professional English', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'english-in-use', 'English in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'grammar-in-use', 'Grammar in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'english-collocation-in-use', 'English Collocation in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'english-idioms-in-use', 'English Idioms in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'english-vocabulary-in-use', 'English Vocabulary in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'english-phrasal-in-use', 'English Phrasal in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'eyes-open', 'Eyes Open', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'super-minds', 'Super Minds', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT gen_random_uuid(), p.id, 'family-friends', 'Family and Friends', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'solutions', 'Solutions', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'oxford-discovery', 'Oxford Discovery', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'round-up', 'Round Up', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'business-result', 'Business Result', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'english-files', 'English Files', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'primary-skills', 'Primary Skills', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'grammarway', 'Grammarway', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT gen_random_uuid(), p.id, 'business-partner', 'Business Partner', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'gold-experience', 'GOLD Experience', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'high-notes', 'High Notes', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'market-leader', 'Market Leader', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'speak-out', 'Speak Out', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'world-wider', 'World Wider', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'focus', 'Focus', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'expert', 'Expert', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT gen_random_uuid(), p.id, 'destination', 'Destination', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT gen_random_uuid(), p.id, 'gateway', 'Gateway', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT gen_random_uuid(), p.id, 'english-world', 'English World', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT gen_random_uuid(), p.id, 'exam-skills', 'Exam Skills', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT gen_random_uuid(), p.id, 'global', 'Global', u.id FROM p, u WHERE p.key = 'macmillan'
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
