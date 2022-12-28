-- SELECT name, date_planned FROM events
-- WHERE date_planned > '2023-01-01' AND max_age > 18
-- ORDER BY date_planned DESC;

SELECT * FROM events AS ev
INNER JOIN locations AS lc ON lc.id = ev.location_id;

