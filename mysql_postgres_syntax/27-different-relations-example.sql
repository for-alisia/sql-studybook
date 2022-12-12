-- EXAMPLE: company has employees, employee has 1 unique account (1-to-1), 
-- employee belongs to the team (1-to-many), team has many employees
-- each team sits in one of building (1-to-many), but building holds a lot of teams
-- employee have multiple projects and each project have multiple employees (many-to-many)

-- employees -> id, first_name, last_name, team_id, account_id
-- teams -> id, building_id, team_name
-- projects -> id, project_name
-- accounts -> id, expiration_date?, employee_id, access_level
-- buildings -> id, building_name

-- Creation of the tables
CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  building_name VARCHAR(300) UNIQUE NOT NULL
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  team_name VARCHAR(500) UNIQUE NOT NULL,
  building_id INT REFERENCES buildings ON DELETE SET NULL
);

CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(500) UNIQUE NOT NULL,
  birth_date DATE NOT NULL,
  team_id INT REFERENCES teams ON DELETE RESTRICT
);

CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  email VARCHAR(500) REFERENCES employees (email) ON DELETE CASCADE,
  password VARCHAR(200) NOT NULL
);

CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  project_name VARCHAR(500) UNIQUE NOT NULL,
  deadline DATE
);

-- To have many-to-many relation we need to add extra table to keep data there 
-- (we can't use an array of values as a column value)
-- Intermediate table
CREATE TABLE projects_employees (
  employee_id INT REFERENCES employees ON DELETE CASCADE,
  project_id INT REFERENCES projects ON DELETE CASCADE,
  PRIMARY KEY (employee_id, project_id) -- Composite primary key here - combination of 2 (or many) columns
);

-- INSERT DATA
INSERT INTO buildings (building_name)
VALUES 
  ('Main Building'), ('Research Center'), ('Lab Center');

INSERT INTO teams (team_name, building_id)
VALUES 
  ('Managent', 1),
  ('Sales', 1),
  ('Tech Support', 2),
  ('IT', 2),
  ('Client Support', 1),
  ('Innovations', 3);

INSERT INTO employees (first_name, last_name, email, birth_date, team_id)
VALUES 
  ('Anna', 'Doe', 'anna@doe.com', '1986-06-10', 1),
  ('John', 'Smith', 'john@smith.com', '1993-09-30', 2),
  ('Katlin', 'Stark', 'katlin@stark.com', '1965-01-17', 3),
  ('Rose', 'Green', 'rose@green.com', '2001-11-14', 4),
  ('Vera', 'Lee', 'vera@lee.com', '1996-05-18', 5),
  ('Henry', 'Ascot', 'henry@askot.com', '1989-03-28', 2),
  ('Adam', 'Nero', 'adam@nero.com', '1981-02-15', 6),
  ('Olga', 'Reece', 'olga@reece.com', '1991-01-16', 3),
  ('Shirley', 'McKein', 'shirley@mckein.com', '1976-11-23', 1),
  ('Carol', 'Carter', 'carol@carter.com', '1997-07-16', 4);

INSERT INTO accounts (email, password) 
VALUES 
  ('anna@doe.com', 'anna123'),
  ('john@smith.com', 'john321'),
  ('john@smith.com', 'vera999');

INSERT INTO projects (project_name, deadline)
VALUES 
  ('Mastering SQL', '2024-10-01'),
  ('New Hire Onboarding', '2023-02-28'),
  ('New Course Evaluation', '2023-01-01'),
  ('Documents exchange system', '2024-01-01'),
  ('Ongoing Sales', NULL),
  ('Ongoing Client Support', NULL);

INSERT INTO projects_employees (employee_id, project_id)
VALUES 
  (1, 1),
  (2, 2),
  (1, 3),
  (3, 1),
  (3, 3),
  (2, 3),
  (6, 6),
  (6, 4),
  (9, 1),
  (8, 5),
  (7, 2),
  (7, 6),
  (7, 3),
  (4, 1),
  (4, 4),
  (5, 6),
  (5, 1);

