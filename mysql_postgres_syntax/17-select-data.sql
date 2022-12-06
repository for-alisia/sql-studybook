SELECT * FROM sales;

SELECT 
  product_name, 
  volume / 1000 AS total_sales_in_thousands 
FROM sales;