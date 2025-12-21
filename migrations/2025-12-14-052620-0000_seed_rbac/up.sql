-- Your SQL goes here
-- roles
INSERT INTO roles (key, name) VALUES
  ('student', 'Student'),
  ('teacher', 'Teacher'),
  ('editor',  'Editor'),
  ('admin',   'Administrator')
ON CONFLICT (key) DO NOTHING;

-- permissions (минимальный, но достаточный набор)
INSERT INTO permissions (key) VALUES
  ('roles.read'),
  ('roles.assign'),
  ('roles.revoke'),
  ('users.read'),
  ('students.progress.read'),
  ('content.read_any'),
  ('content.create'),
  ('content.update_any'),
  ('content.update_own'),
  ('content.publish'),
  ('content.unpublish'),
  ('content.archive'),
  ('content.delete'),
  ('content.audit.read'),
  ('content.moderate')
ON CONFLICT (key) DO NOTHING;

-- role_permissions
-- student: обычно без прав управления
-- teacher:
INSERT INTO role_permissions(role_id, permission_id)
SELECT r.id, p.id
FROM roles r, permissions p
WHERE r.key='teacher' AND p.key IN ('users.read','students.progress.read','content.read_any')
ON CONFLICT DO NOTHING;

-- editor:
INSERT INTO role_permissions(role_id, permission_id)
SELECT r.id, p.id
FROM roles r, permissions p
WHERE r.key='editor' AND p.key IN ('content.read_any','content.create','content.update_own','content.audit.read')
ON CONFLICT DO NOTHING;

-- admin:
INSERT INTO role_permissions(role_id, permission_id)
SELECT r.id, p.id
FROM roles r, permissions p
WHERE r.key='admin'
ON CONFLICT DO NOTHING;
