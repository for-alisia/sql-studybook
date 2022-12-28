CREATE INDEX salary_idx ON users (salary);

CREATE UNIQUE INDEX email_idx ON users (email);

DROP INDEX salary_index;

-- Composite index (for combination of columns)
CREATE INDEX addr ON addresses (street, city);

-- Partial index - only Postgres
CREATE INDEX salary_part ON users (salary)
WHERE salary > 12000;