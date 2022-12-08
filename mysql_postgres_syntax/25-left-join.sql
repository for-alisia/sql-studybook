--cAll data will be included from first table (not only matched as for INNER JOIN)
SELECT * FROM clients AS cl LEFT JOIN addresses AS ad ON cl.address_id = ad.id;

-- Here ALL addresses will be matching clients
SELECT * FROM addresses AS ad LEFT JOIN clients as cl ON cl.address_id = ad.id;

-- ALL cities will be included
SELECT ct.name AS city_name, cl.id, last_name, first_name,  street, house_number  
FROM cities AS ct
LEFT JOIN addresses as ad ON ct.id = ad.city_id
LEFT JOIN clients as cl ON cl.address_id = ad.id;

-- With right join city without according address is not included
SELECT ct.name AS city_name, cl.id, last_name, first_name,  street, house_number  
FROM cities AS ct
RIGHT JOIN addresses as ad ON ct.id = ad.city_id
RIGHT JOIN clients as cl ON cl.address_id = ad.id;

-- CROSS JOIN - combine all rows from first table with rows from second table with all possible combinations
SELECT * FROM clients CROSS JOIN addresses;
