-- Your SQL goes here
-- 1) join-table
CREATE TABLE quizlet_folder_sets (
  folder_id uuid NOT NULL REFERENCES quizlet_folders(id) ON DELETE CASCADE,
  set_id    uuid NOT NULL REFERENCES quizlet_sets(id)    ON DELETE CASCADE,
  position  int4 NOT NULL DEFAULT 0,
  created_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY (folder_id, set_id)
);

-- 2) индексы для быстрых выборок
CREATE INDEX idx_qfs_folder  ON quizlet_folder_sets(folder_id);
CREATE INDEX idx_qfs_set    ON quizlet_folder_sets(set_id);

-- 3) (опционально) перенести текущие связи из quizlet_sets.folder_id в join-table
INSERT INTO quizlet_folder_sets(folder_id, set_id, position)
SELECT folder_id, id, 0
FROM quizlet_sets
WHERE folder_id IS NOT NULL;

-- 4) если ты хочешь полностью перейти на join-table, убираем колонку folder_id из quizlet_sets
ALTER TABLE quizlet_sets DROP COLUMN folder_id;
