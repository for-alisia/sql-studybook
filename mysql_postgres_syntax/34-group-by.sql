SELECT booking_date, SUM(num_guests) FROM bookings GROUP BY booking_date;

SELECT name, SUM(num_guests) FROM payment_methods AS pm
INNER JOIN bookings AS b ON pm.id = b.payment_id
GROUP BY pm.name;

SELECT name, booking_date, SUM(num_guests), ROUND(AVG(amount_tipped), 2)
FROM payment_methods AS pm
INNER JOIN bookings AS b ON pm.id = b.payment_id
GROUP BY pm.name, b.booking_date;