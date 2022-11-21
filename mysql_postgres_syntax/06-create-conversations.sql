CREATE TABLE conversations(
  id INT PRIMARY KEY AUTO_INCREMENT,  -- MySql
  id SERIAL PRIMARY KEY, -- Postgres
  user_id INT,
  employer_id INT,
  message TEXT NOT NULL,
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)