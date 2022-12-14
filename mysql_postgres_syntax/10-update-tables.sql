-- Postgres
ALTER TABLE employers 
ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT,
ALTER COLUMN is_hiring SET DEFAULT TRUE,
ALTER COLUMN company_name SET NOT NULL;

ALTER TABLE conversations
ALTER COLUMN date_sent SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE users
ALTER COLUMN full_name SET NOT NULL,
ALTER COLUMN current_status SET NOT NULL;


-- MySQL
ALTER TABLE employers
MODIFY COLUMN yearly_revenue FLOAT(5,2),
MODIFY COLUMN is_hiring BOOLEAN DEFAULT TRUE,
MODIFY COLUMN company_name VARCHAR(300) NOT NULL;

ALTER TABLE conversations
MODIFY COLUMN date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL;

