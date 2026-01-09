-- This file should undo anything in `up.sql`
-- down.sql

DELETE FROM user_roles ur
USING users u, roles r
WHERE ur.user_id = u.id
  AND ur.role_id = r.id
  AND u.username IN ('anna','boris','maria','alex')
  AND r.key IN ('admin','teacher','student','editor');