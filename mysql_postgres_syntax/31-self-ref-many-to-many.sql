CREATE TABLE media_users (
  id SERIAL PRIMARY KEY,
  user_name VARCHAR(300) UNIQUE NOT NULL
);

CREATE TABLE friends (
  user_id INT REFERENCES media_users ON DELETE CASCADE,
  friend_id INT REFERENCES media_users ON DELETE CASCADE,
  CHECK (user_id < friend_id), -- restrict duplication 1 -> 2 and 2 -> 1 - the same users
  PRIMARY KEY (user_id, friend_id)
);

INSERT INTO media_users (user_name) VALUES ('Max'), ('Elena'), ('Alex');

INSERT INTO friends (user_id, friend_id) 
VALUES (1, 2), (1, 3);