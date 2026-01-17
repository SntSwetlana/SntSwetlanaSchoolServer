-- Your SQL goes here
CREATE TABLE subject_content_items (
  subject_id UUID NOT NULL REFERENCES subjects(id) ON DELETE CASCADE,
  content_id UUID NOT NULL REFERENCES content_items(id) ON DELETE CASCADE,
  PRIMARY KEY (subject_id, content_id)
);
