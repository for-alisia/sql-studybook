CREATE TABLE users (
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)) -- MySql, 401 = 200 + 200 + 1 (for space) 
)