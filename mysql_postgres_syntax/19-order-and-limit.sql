SELECT * FROM sales WHERE is_cancelled IS NOT TRUE ORDER BY volume DESC LIMIT 3;

SELECT * FROM sales LIMIT 5 OFFSET 5; -- like pagination

SELECT DISTINCT customer_name FROM sales; -- only unique values 