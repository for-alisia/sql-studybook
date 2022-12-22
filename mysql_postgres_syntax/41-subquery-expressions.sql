-- Returns true or false based on presence row in the table
EXISTS more effecient than filter
SELECT EXISTS(
  SELECT * FROM customers
  WHERE email = 'max@test.com'
);

SELECT o.id FROM orders AS o
WHERE EXISTS(
  SELECT c.email FROM customers AS c
  WHERE o.customer_id = c.id AND c.email = 'manu@test.com'
  );

SELECT id, first_name FROM customers
WHERE first_name IN('Max', 'Manu');

SELECT id, first_name FROM customers
WHERE first_name NOT IN('Max', 'Manu');

SELECT email FROM customers
WHERE id IN(
  SELECT customer_id FROM orders
);