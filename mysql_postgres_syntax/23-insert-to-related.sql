INSERT INTO cities (name) VALUES ('Berlin'), ('Krakow'), ('Paris'), ('Hamburg'), ('London');

INSERT INTO addresses (street, house_number, city_id) 
VALUES ('Gertrudy', '16A', 2), ('Shtrase', '23', 1), ('12 alley', '2', 3), ('Baker', '1G', 5);

INSERT INTO clients (first_name, last_name, email, address_id)
VALUES ('Max', 'Romano', 'romano@mail.com', 1), ('Helga', 'Oder', 'oder@mail.com', 2),
('Elen', 'Duboia', 'duboia@mail.com', 3), ('Victoria', 'Garner', 'garner@mail.com', 4);