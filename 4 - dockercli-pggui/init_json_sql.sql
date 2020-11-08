-- Create super user.

CREATE ROLE testuser LOGIN SUPERUSER PASSWORD 'testpassword';

-- Create table after check.

DROP TABLE IF EXISTS example;

CREATE TABLE example (
  id INT,
  json_col JSON,
  json_array_col JSON,
  jsonb_col JSONB,
  jsonb_array_col JSONB
);

-- Insert values into table.

INSERT INTO example VALUES (1,
  '[1,2,3]'::json,
  '[{"id": 0, "name": "a"},{"id": 1, "name": "a"},{"id": 2, "name": "c"}]'::json,
  '[1,2,3]'::jsonb,
  '[{"id": 0, "name": "a"},{"id": 1, "name": "a"},{"id": 2, "name": "c"}]'::jsonb
);
