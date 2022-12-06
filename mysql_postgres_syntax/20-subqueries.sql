CREATE VIEW example_result AS SELECT * FROM sales WHERE is_cancelled IS FALSE;
SELECT DISTINCT customer_name FROM example_result ;

SELECT customer_name FROM (SELECT * FROM sales WHERE volume > 500) AS base_result;
