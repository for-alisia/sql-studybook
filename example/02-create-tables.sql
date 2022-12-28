CREATE TABLE cities (
  name VARCHAR(300) PRIMARY KEY -- will be unique and not null if it's a primary key
);

CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  title VARCHAR(300),
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(100) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  city_name VARCHAR(300) REFERENCES cities ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(500) NOT NULL,
  birthdate DATE,
  email VARCHAR(500) NOT NULL
);

CREATE TABLE organizers (
  password VARCHAR(500) NOT NULL,
  user_id INT PRIMARY KEY REFERENCES users ON DELETE CASCADE
);

CREATE TABLE tags (
  name VARCHAR(200) PRIMARY KEY
);

CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  name VARCHAR(300) NOT NULL UNIQUE CHECK(LENGTH(name) > 3),
  date_planned TIMESTAMP,
  image VARCHAR(500),
  description VARCHAR(500),
  max_participants INT CHECK (max_participants > 0),
  min_age INT CHECK (min_age > 0),
  location_id INT REFERENCES locations ON DELETE SET NULL,
  organizer_id INT REFERENCES organizers ON DELETE CASCADE
);

CREATE TABLE events_users (
  event_id INT REFERENCES events ON DELETE CASCADE,
  user_id INT REFERENCES users ON DELETE CASCADE,
  PRIMARY KEY (event_id, user_id)
);

CREATE TABLE events_tags (
  event_id INT REFERENCES events ON DELETE CASCADE,
  tag_name VARCHAR(200) REFERENCES tags ON DELETE CASCADE,
  PRIMARY KEY (event_id, tag_name)
);