SELECT price * billing_frequency as annual_revenue FROM memberships;

SELECT CEIL(consumption) FROM memberships;
SELECT FLOOR(consumption) FROM memberships; 
SELECT TRUNC(consumption, 0) FROM memberships;
SELECT ROUND(consumption, 2) FROM memberships;

SELECT CONCAT(first_name, ' ',last_name) FROM memberships;

-- Postgres Only
SELECT first_name || ' ' || last_name from memberships;

SELECT CONCAT('$ ', price) FROM memberships;

SELECT LOWER(first_name) FROM memberships;
SELECT UPPER(last_name) FROm memberships;

SELECT * FROM memberships WHERE LENGTH(last_name) < 10;


INSERT INTO memberships (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    first_name,
    last_name,
    price,
    billing_frequency,
    gender

)
VALUES (
    '2021-05-02',
    NULL,
    '2021-06-05 11:52:25',
    '2021-06-05 11:58:08',
    NULL,
    'Monti',
    'Durns',
    199.99,
    1,
    TRIM(BOTH ' ' FROM 'male   ') -- TRAILING/LEADING
);