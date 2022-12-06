-- SELECT * FROM sales WHERE volume > 300;

-- SELECT * FROM sales WHERE is_recurring IS TRUE; -- can be is_recurring = 0

-- SELECT * FROM sales WHERE (is_cancelled IS TRUE) AND (volume > 300);

-- SELECT * FROM sales WHERE date_created > '2021-11-01' AND date_created < '2022-05-01'; -- both dates excluded

-- SELECT * FROM sales WHERE date_created BETWEEN '2021-11-01' AND '3033-05-01'; -- both dates included

-- SELECT * FROM sales WHERE volume BETWEEN 100 AND 500;

-- SELECT * FROM sales WHERE customer_name <> 'Company A';

-- SELECT * FROM sales WHERE customer_name > 'Company A';

-- SELECT * FROM sales WHERE date_fullfilled IS NOT NULL;

Select * FROM sales WHERE EXTRACT(DAY FROM date_fullfilled - date_created) <= 5;
