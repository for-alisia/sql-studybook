SELECT amount_billed, 
  CASE WHEN amount_billed > 30 THEN 'Good'
       WHEN amount_billed > 15 THEN 'Normal'
       ELSE 'Bad'
  END
FROM orders;

SELECT weekday_number,
  CASE
    WHEN weekday_number = 1 THEN 'Mn'
    WHEN weekday_number = 2 THEN 'Tu'
    WHEN weekday_number = 3 THEN 'Wed'
    WHEN weekday_number = 4 THEN 'Thu'
    WHEN weekday_number = 5 THEN 'Fr'
    WHEN weekday_number = 6 THEN 'Sat'
    ELSE 'Sun'
  END
FROM (SELECT EXTRACT(ISODOW FROM last_checkin) AS weekday_number FROM memberships) AS weekday;

