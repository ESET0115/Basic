CREATE DATABASE shop
USE shop;

CREATE TABLE users(users_id int PRIMARY KEY, users_email varchar(50), users_name varchar(50))
INSERT INTO users VALUES (1, 'chaiwala@gov.in', 'Narendra Modi')
INSERT INTO users VALUES (2, 'antimuslim@gov.in', 'Yogi Adityanath')
INSERT INTO users VALUES (3, 'bccikabaap@gov.in', 'Amit Shah')
INSERT INTO users VALUES (4, 'ethanol20@gov.in', 'Nithin Gadkari')
SELECT * FROM users


CREATE TABLE books(product_id int PRIMARY KEY, title varchar(50), price varchar(50))
INSERT INTO books VALUES (1, 'Isobutanol Formulation', 35000)
INSERT INTO books VALUES (2, 'Chutiya Janta Party', 45000)
INSERT INTO books VALUES (3, 'Bulldozer Basics', 24000)
INSERT INTO books VALUES (4, 'Virat Kohli Nudes', 32000)
SELECT * FROM books

ALTER TABLE books
ALTER COLUMN price float

SELECT * FROM users
SELECT * FROM books
SELECT * FROM orders

CREATE TABLE orders(order_no int PRIMARY KEY, users_id int, product_id int, FOREIGN KEY (users_id) REFERENCES users(users_id) , FOREIGN KEY (product_id) REFERENCES books(product_id))

INSERT INTO orders VALUES (97, 1, 2)
INSERT INTO orders VALUES (98, 4, 1)
INSERT INTO orders VALUES (99, 3, 4)
INSERT INTO orders VALUES (100, 2, 3)