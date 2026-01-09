-- Your SQL goes here
-- up.sql

-- 1) anna -> teacher
INSERT INTO user_roles (user_id, role_id, assigned_by)
SELECT u.id, r.id, NULL
FROM users u
JOIN roles r ON r.key = 'teacher'
WHERE u.username = 'anna'
ON CONFLICT DO NOTHING;

-- 2) boris -> editor
INSERT INTO user_roles (user_id, role_id, assigned_by)
SELECT u.id, r.id, NULL
FROM users u
JOIN roles r ON r.key = 'editor'
WHERE u.username = 'boris'
ON CONFLICT DO NOTHING;

-- 3) maria -> teacher
INSERT INTO user_roles (user_id, role_id, assigned_by)
SELECT u.id, r.id, NULL
FROM users u
JOIN roles r ON r.key = 'student'
WHERE u.username = 'maria'
ON CONFLICT DO NOTHING;

-- 4) alex -> admin
INSERT INTO user_roles (user_id, role_id, assigned_by)
SELECT u.id, r.id, NULL
FROM users u
JOIN roles r ON r.key = 'admin'
WHERE u.username = 'alex'
ON CONFLICT DO NOTHING;
