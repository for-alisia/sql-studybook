-- Like works with strings and return boolean for each row - looks for value exactly
SELECT first_name LIKE 'Max', first_name FROM memberships;

-- To look for a parts we need to use a pattern 
-- Like is case sensitive - ILIKE is non case sensitive - only for postgres, 
-- in MySQL LIKE is non case sensitive
-- Lok for any chars after Ma (no or many are allowed)
SELECT first_name LIKE 'Ma%', first_name FROM memberships;
-- _ - is a placeholder for 1 char
SELECT first_name LIKE '_a%', first_name FROM memberships;
-- We can use LIKE with filters
SELECT first_name FROM memberships
WHERE first_name LIKE 'J%';