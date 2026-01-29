WITH u AS (SELECT id FROM users LIMIT 1),
     p AS (SELECT id, key FROM publishers)

INSERT INTO course_series (publisher_id, key, title, created_by)
SELECT p.id, 'story-fun', 'Story Fun', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'prepare', 'Prepare', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'complete', 'Complete', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'empower', 'Empower', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'objective-proficiency', 'Objective Proficiency', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'open-world', 'Open World', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'compact-first', 'Compact First', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'certificate-in-advanced-english', 'Certificate in Advanced English', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'certificate-in-professional-english', 'Certificate in Professional English', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'english-in-use', 'English in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'grammar-in-use', 'Grammar in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'english-collocation-in-use', 'English Collocation in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'english-idioms-in-use', 'English Idioms in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'english-vocabulary-in-use', 'English Vocabulary in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'english-phrasal-in-use', 'English Phrasal in Use', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'eyes-open', 'Eyes Open', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'super-minds', 'Super Minds', u.id FROM p, u WHERE p.key = 'cambridge'
UNION ALL
SELECT p.id, 'family-friends', 'Family and Friends', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT p.id, 'solutions', 'Solutions', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT p.id, 'oxford-discovery', 'Oxford Discovery', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT p.id, 'round-up', 'Round Up', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT p.id, 'business-result', 'Business Result', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT p.id, 'english-files', 'English Files', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT p.id, 'primary-skills', 'Primary Skills', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT p.id, 'grammarway', 'Grammarway', u.id FROM p, u WHERE p.key = 'oxford'
UNION ALL
SELECT p.id, 'business-partner', 'Business Partner', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT p.id, 'gold-experience', 'GOLD Experience', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT p.id, 'high-notes', 'High Notes', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT p.id, 'market-leader', 'Market Leader', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT p.id, 'speak-out', 'Speak Out', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT p.id, 'world-wider', 'World Wider', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT p.id, 'focus', 'Focus', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT p.id, 'expert', 'Expert', u.id FROM p, u WHERE p.key = 'pearson'
UNION ALL
SELECT p.id, 'destination', 'Destination', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT p.id, 'gateway', 'Gateway', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT p.id, 'english-world', 'English World', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT p.id, 'exam-skills', 'Exam Skills', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT p.id, 'global', 'Global', u.id FROM p, u WHERE p.key = 'macmillan'
UNION ALL
SELECT p.id, 'academy-stars', 'Academy Stars', u.id FROM p, u WHERE p.key = 'macmillan'
ON CONFLICT (publisher_id, key) DO UPDATE
SET title = EXCLUDED.title;