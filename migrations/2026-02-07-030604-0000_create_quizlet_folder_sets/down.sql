-- This file should undo anything in `up.sql`
-- откат: возвращаем folder_id (если удаляли)
ALTER TABLE quizlet_sets ADD COLUMN folder_id uuid NULL REFERENCES quizlet_folders(id) ON DELETE SET NULL;

-- восстановить folder_id из join-table (берём любую папку, например минимальную по position)
UPDATE quizlet_sets s
SET folder_id = sub.folder_id
FROM (
  SELECT DISTINCT ON (set_id) set_id, folder_id
  FROM quizlet_folder_sets
  ORDER BY set_id, position ASC
) sub
WHERE s.id = sub.set_id;

DROP TABLE quizlet_folder_sets;
