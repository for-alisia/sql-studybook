-- PostgresSQL + ENUM - need to create custom type first
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,  -- MySql
  id SERIAL PRIMARY KEY,  -- Postgres (provides INT) (also work in MySql, but provides BIGINT)
  full_name VARCHAR(200) NOT NULL,
  yearly_salary INT CHECK (yearly_salary > 0),
  current_status employment_status NOT NULL -- Postgres
  current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
);