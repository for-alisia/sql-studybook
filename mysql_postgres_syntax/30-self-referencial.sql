CREATE TABLE employees_with_supervisor (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  supervisor_id INT REFERENCES employees_with_supervisor ON DELETE SET NULL -- self-reference (to the same table, but different row)
);

INSERT INTO employees_with_supervisor (first_name, last_name, supervisor_id) 
VALUES
  ('John', 'Doe', NULL),
  ('Anna', 'Smith', 1),
  ('Nina', 'Shwarz', 2),
  ('Victoria', 'Garner', 2);

-- Combine a table with itself
SELECT e1.first_name, e1.last_name, e2.first_name AS supervisor_first_name, e2.last_name AS supervisor_last_name
FROM employees_with_supervisor AS e1
LEFT JOIN employees_with_supervisor AS e2 ON e1.supervisor_id = e2.id;