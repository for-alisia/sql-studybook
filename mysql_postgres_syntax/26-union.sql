-- Combine rows from 1 table
SELECT * FROM clients WHERE id < 3
UNION
SELECT * FROM clients WHERE address_id IS NOT NULL;

-- Combine rows from different tables (number of columns should be the same)
SELECT last_name FROM clients
UNION
SELECT full_name FROM users;