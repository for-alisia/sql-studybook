CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  name VARCHAR(300) NOT NULL CHECK(LENGTH(name) > 3),
  date_planned TIMESTAMP,
  image VARCHAR(500),
  description VARCHAR(500),
  max_participants INT CHECK (max_participants > 0),
  min_age INT CHECK (min_age > 0)
);