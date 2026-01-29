-- Your SQL goes here
-- UUID
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE IF NOT EXISTS quizlet_folders (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  owner_id UUID NULL, -- позже привяжешь к users
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Индексы
CREATE INDEX IF NOT EXISTS idx_quizlet_folders_owner ON quizlet_folders(owner_id);
CREATE INDEX IF NOT EXISTS idx_quizlet_folders_updated_at ON quizlet_folders(updated_at DESC);

-- Важно: сделаем folder_id FK с ON DELETE SET NULL
ALTER TABLE quizlet_sets
  ADD CONSTRAINT fk_quizlet_sets_folder
  FOREIGN KEY (folder_id) REFERENCES quizlet_folders(id)
  ON DELETE SET NULL;

-- (опционально) индекс на folder_id у тебя уже есть, но пусть будет
CREATE INDEX IF NOT EXISTS idx_quizlet_sets_folder ON quizlet_sets(folder_id);
