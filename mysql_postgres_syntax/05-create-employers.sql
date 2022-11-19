CREATE TABLE employers (
  company_name VARCHAR(250) NOT NULL,
  company_address VARCHAR(300),
  -- yearly_revenue FLOAT(5, 2) -- Approximated Allowed 123.45 not allowed - 12456.12, 1.234
  yearly_revenue NUMERIC(5, 2),
  is_hiring BOOLEAN DEFAULT TRUE
)