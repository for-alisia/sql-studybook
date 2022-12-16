SELECT booking_date, SUM(num_guests) FROM bookings GROUP BY booking_date;

SELECT name, SUM(num_guests) FROM payment_methods AS pm
INNER JOIN bookings AS b ON pm.id = b.payment_id
GROUP BY pm.name;

SELECT name, booking_date, SUM(num_guests), ROUND(AVG(amount_tipped), 2)
FROM payment_methods AS pm
INNER JOIN bookings AS b ON pm.id = b.payment_id
GROUP BY pm.name, b.booking_date;

-- With filter WHERE
SELECT booking_date, COUNT(booking_date) FROM bookings
WHERE amount_billed > 30
GROUP BY booking_date;

-- With HAVING filter
SELECT booking_date, COUNT(booking_date) FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) > 30;