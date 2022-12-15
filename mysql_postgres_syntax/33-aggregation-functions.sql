-- COUNT
SELECT COUNT(*) FROM bookings; -- total amout of rows // 20
SELECT COUNT(booking_date) FROM bookings; -- amount of rows that have booking_date // 20
SELECT COUNT(amount_tipped) FROM bookings; -- if the field is optional, total amount will differ // 18
SELECT COUNT(DISTINCT booking_date) FROM bookings; -- consider only unique values for the column // 5

-- MAX-MIN
SELECT MAX(num_seats) FROM tables; -- maximum value in num_seats // 8
SELECT MIN(num_seats) FROM tables; -- minimum // 2
SELECT MAX(amount_billed) as max_billed, MAX(amount_tipped) AS max_tipped FROM bookings;
SELECT MAX(category), MIN(category) from tables; -- MAX goes for last alphabetical, MIN - for the first one
SELECT MAX(booking_date), MIN(booking_date) from bookings; -- also waorks with dates

-- SUM
SELECT SUM(amount_billed) FROM bookings;

-- AVG - average ignores NULL values
SELECT AVG(num_guests) FROM bookings;
SELECT ROUND(AVG(num_guests), 2) FROM bookings; -- round the result to 3.80 form

-- FILTER
SELECT ROUND(AVG(amount_tipped), 2) FROM bookings
WHERE amount_billed > 20 and num_guests > 2;

-- JOINS
SELECT MAX(num_guests), MAX(num_seats) FROM bookings AS bk
INNER JOIN tables as tb ON bk.table_id = tb.id;

-- FILTERS + JOIN
SELECT MAX(num_guests), MAX(num_seats) FROM bookings AS bk
INNER JOIN tables as tb ON bk.table_id = tb.id
INNER JOIN payment_methods as pm ON pm.id = bk.payment_id
WHERE tb.num_seats < 5 AND pm.name = 'Cash';
