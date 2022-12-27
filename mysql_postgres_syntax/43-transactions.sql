-- Turn entire session to a transaction - all changes are kept in memory
BEGIN TRANSACTION;

INSERT INTO customers(
    first_name,
    last_name,
    email
)
VALUES('Maria', 'Jones', 'maria@test.com');

-- Savepoint - to keep changes in certain state
SAVEPOINT save_one;

INSERT INTO orders(
   amount_billed,
   customer_id 
)
VALUES(103.12, 5);

-- revert changes - transaction is terminated
-- ROLLBACK;

-- revert to savepoint - transaction is not terminated
-- ROLLBACK TO save_one;

-- Starting new transaction without rollback/commit will automatically commit the changes

COMMIT;