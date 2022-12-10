-- Get all employess with projects (can be few rows for 1 employee if he is a part of few projects)
SELECT emp.id AS employee_id, first_name, last_name, email, project_name FROM employees AS emp
LEFT JOIN projects_employees AS pe ON pe.employee_id = emp.id
LEFT JOIN projects AS prj ON pe.project_id = prj.id;

-- Get teams plus assigned emplyees and building
SELECT team_name, first_name, last_name, email, building_name FROM teams
LEFT JOIN employees AS emp ON emp.team_id = teams.id
LEFT JOIN buildings AS b ON teams.building_id = b.id;

-- Get employees from specific building
SELECT first_name, last_name, building_name FROM employees AS emp
INNER JOIN teams ON teams.id = emp.team_id
INNER JOIN buildings AS bld ON bld.id = teams.building_id
WHERE bld.id = 2
ORDER BY emp.birth_date;