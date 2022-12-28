-- EXPLAIN ANALYZE
-- SELECT * FROM users
-- WHERE salary > 12000;

EXPLAIN ANALYZE
SELECT * FROM addresses 
WHERE street = 'Teststreet' AND city = 'Munich';