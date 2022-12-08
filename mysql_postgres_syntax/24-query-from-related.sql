-- Join 2 tables (no aliases, all columns)
SELECT * FROM clients INNER JOIN addresses ON clients.address_id = addresses.id;

-- Join 2 tables with aliases (all columns)
SELECT * FROM clients AS cl INNER JOIN addresses AS ad ON cl.address_id = ad.id;

-- Join 2 tables with aliases and get specific columns
SELECT 
cl.id, last_name, first_name, street, house_number, city_id 
FROM clients AS cl 
INNER JOIN addresses AS ad 
ON cl.address_id = ad.id;

-- Join 3 tables with aliases and get specific columns
SELECT 
cl.id, last_name, first_name, ct.name AS city_name, street, house_number 
FROM clients AS cl 
INNER JOIN addresses AS ad 
ON cl.address_id = ad.id
INNER JOIN cities as ct
ON ad.city_id = ct.id;

-- Join 3 tables with aliases and get specific columns and filters and order
SELECT 
cl.id, last_name, first_name, ct.name AS city_name, street, house_number 
FROM clients AS cl 
INNER JOIN addresses AS ad 
ON cl.address_id = ad.id
INNER JOIN cities as ct
ON ad.city_id = ct.id
WHERE ct.name = 'Berlin' OR ct.name = 'Paris'
ORDER BY last_name DESC;