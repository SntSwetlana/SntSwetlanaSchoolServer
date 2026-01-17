-- This file should undo anything in `up.sql`
ALTER TABLE content_items
  DROP COLUMN difficulty,
  DROP COLUMN time_estimate_minutes;
