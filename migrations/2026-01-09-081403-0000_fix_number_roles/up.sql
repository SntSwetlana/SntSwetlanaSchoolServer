-- Your SQL goes here
-- гарантируем 1 роль на 1 пользователя
CREATE UNIQUE INDEX IF NOT EXISTS ux_user_roles_user_id ON user_roles(user_id);
