-- This file should undo anything in `up.sql`
DROP INDEX IF EXISTS idx_quizlet_sets_title_tsv;
ALTER TABLE quizlet_sets DROP COLUMN IF EXISTS title_tsv;
