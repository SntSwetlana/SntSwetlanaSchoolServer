-- This file should undo anything in `up.sql`
ALTER TABLE quizlet_sets DROP CONSTRAINT IF EXISTS fk_quizlet_sets_folder;

DROP TABLE IF EXISTS quizlet_folders;
