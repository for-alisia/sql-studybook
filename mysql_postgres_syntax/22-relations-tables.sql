CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(300) UNIQUE NOT NULL
);

CREATE TABLE addresses (
  id SERIAL PRIMARY KEY,
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(50) NOT NULL,
  city_id INT REFERENCES cities ON DELETE CASCADE 
  -- FOREIGN KEY (city_id) REFERENCES cities ON DELETE CASCADE -- MY SQL
);

CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(300) NOT NULL,
  address_id INT REFERENCES addresses (id) ON DELETE RESTRICT -- column name is optional if it's primary key
);

-- RESTRICT, NO ACTION (default) - operation to delete address if any user uses it will not be proceeded
-- CASCADE - will perform action on user as well if it performs on user
-- SET NULL, SET DEFAULT - will set user's address id to NULL or default value if address was deleted



