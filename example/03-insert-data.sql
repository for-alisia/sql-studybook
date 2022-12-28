INSERT INTO tags (name) VALUES ('socialize'), ('learn'), ('connect'), ('dinner'), ('breakfast');

INSERT INTO cities (name)
VALUES ('Munich'), ('Krakow'), ('Berlin');

INSERT INTO locations (title, street, house_number, postal_code, city_name)
VALUES 
  ('Cinema park', 'Green', '11', '31-011', 'Munich'),
  ('Crystal mountains', 'Blue', '2', '31-048', 'Krakow'),
  (NULL, 'Red', '23A', '12-098', 'Berlin');

INSERT INTO users (first_name, last_name, birthdate, email)
VALUES 
  ('Max', 'Schwarz', '1989-05-01', 'max@test.com'),
  ('Manuel', 'Lorenz', '1988-10-19', 'manuel@test.com'),
  ('Julie', 'Barnes', '1986-02-13', 'julie@test.com'),
  ('Michael', 'Smith', '1982-11-11', 'michael@test.com');

INSERT INTO organizers (password, user_id)
VALUES 
  ('mypw1', 17), -- passwords would typically be stored encrypted
  ('somepw2', 18);

INSERT INTO events (
  name, date_planned, image, description, max_participants, min_age, location_id, organizer_id
) VALUES 
  ('JS conference', '2023-01-14 09:00:00', 'some/path/1', NULL, NULL, NULL, 13, 17),
  ('Mental helth session: self help', '2023-02-15 17:00:00', 'some/path/2', 'Help yourself', 20, 18, 14, 18),
  ('Expats: adopt new culture', '2023-01-30 19:00:00', 'some/path/3', 'Useful info', 50, 18, 15, 17),
  ('Spanish: speaking club - Beginners', '2023-01-18 17:30:00', 'some/path/4', NULL, 12, NULL, 13, 18),
  ('Cooking club: best deserts', '2022-12-18 14:30:00', 'some/path/5', NULL, 8, 14, 13, 18);

INSERT INTO events_tags (event_id, tag_name)
VALUES 
  (11, 'socialize'),
  (13, 'connect'),
  (12, 'dinner');


INSERT INTO events_users (event_id, user_id)
VALUES 
  (11, 19),
  (11, 20),
  (12, 17),
  (12, 19),
  (13, 18);

-- -- To update data
UPDATE events 
SET min_age = 16, max_participants = 60
WHERE id = 13;

-- To delete data
DELETE FROM events WHERE date_planned < '2022-12-31';