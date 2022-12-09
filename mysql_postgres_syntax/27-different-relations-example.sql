-- EXAMPLE: company has employees, employee has 1 unique account (1-to-1), 
-- employee belongs to the team (1-to-many), team has many employees
-- each team sits in one of building (1-to-many), but building holds a lot of teams
-- employee have multiple projects and each project have multiple employees (many-to-many)

-- employees -> id, first_name, last_name, team_id, account_id
-- teams -> id, building_id, team_name
-- projects -> id, project_name
-- accounts -> id, expiration_date, employee_id, access_level
-- buildings -> id, building_name