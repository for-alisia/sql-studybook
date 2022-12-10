DELETE FROM buildings WHERE id = 2; -- success - value is set to NULL in teams
DELETE FROM teams WHERE id = 2; -- fails as has RESTRICT
DELETE FROM projects WHERE id = 2; -- ptoject will be deleted from intermediate table