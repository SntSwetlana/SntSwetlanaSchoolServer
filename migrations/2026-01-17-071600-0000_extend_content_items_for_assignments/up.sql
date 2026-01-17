-- Your SQL goes here
ALTER TABLE content_items
  ADD COLUMN difficulty TEXT,
  ADD COLUMN time_estimate_minutes INT NOT NULL DEFAULT 0;
