-- Postgres
SELECT EXTRACT(MONTH FROM last_checkin) FROM memberships;
SELECT EXTRACT(DAY FROM last_checkin) FROM memberships;
-- ISODOW - starts from Monday (with 1), DOW starts from Sunday
SELECT EXTRACT(ISODOW FROM last_checkin) FROM memberships; -- Weekday, works only for Postgres

-- MySQL (starts from Monday), + 1 to adjust with ISODOW
SELECT WEEKDAY(last_checkin) + 1 FROM memberships; -- works in MySQL

-- MySQL
SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME) FROM memberships;

-- Postgres
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME FROM memberships;

-- Postgres - returns interval {hours: .., minutes: .., seconds: ..}
SELECT last_checkout - last_checkin FROM memberships;

-- MySql
SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) FROM memberships;

-- Postgres
SELECT NOW() - membership_start FROM memberships; -- interval
SELECT membership_end - membership_start FROM memberships; -- diff in days

-- MySql
SELECT DATEDIFF(membership_end, membership_start) FROM memberships;
SELECT DATEDIFF(NOW(), membership_start) FROM memberships;

-- Postgres +/- operations with dates are possible
SELECT membership_start + 7, membership_start FROM memberships; 
-- Returns TIMESTAMP be default, need to convert to date
SELECT (membership_start + INTERVAL '7 MONTH')::TIMESTAMP::DATE, membership_start FROM memberships;

-- MySQL DAY/MONTH/YEAR
SELECT DATE_ADD(membership_start, INTERVAL 7 DAY) FROM memberships;