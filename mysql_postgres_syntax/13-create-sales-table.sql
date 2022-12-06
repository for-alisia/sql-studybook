CREATE TABLE sales (
  id SERIAL PRIMARY KEY, -- Postgres
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  date_fullfilled TIMESTAMP,
  customer_name VARCHAR(300) NOT NULL,
  product_name VARCHAR(300) NOT NULL,
  volume NUMERIC(5, 2) NOT NULL CHECK (volume > 0),
  is_recurring BOOLEAN DEFAULT FALSE,
  is_cancelled BOOLEAN DEFAULT FALSE
);

-- DROP TABLE sales;