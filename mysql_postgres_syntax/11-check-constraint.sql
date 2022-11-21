-- Creation
-- CREATE TABLE users (
--   yearly_salary INT CHECK (yearly_salary > 0);
-- );

-- Removing rows violated this constraint
UPDATE users SET yearly_salary = NULL WHERE full_name = 'Alex Nils';

-- Updating
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);