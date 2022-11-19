-- PostgresSQL + ENUM - need to create custom type first
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
  full_name VARCHAR(200) NOT NULL,
  yearly_salary INT,
  current_status employment_status NOT NULL
  -- current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
);