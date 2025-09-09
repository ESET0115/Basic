CREATE DATABASE book_store
USE book_store;

CREATE TABLE users(users_id int PRIMARY KEY, users_email varchar(50), users_name varchar(50))
INSERT INTO users VALUES (1, 'chaiwala@gov.in', 'Narendra Modi')
INSERT INTO users VALUES (2, 'antimuslim@gov.in', 'Yogi Adityanath')
INSERT INTO users VALUES (3, 'bccikabaap@gov.in', 'Amit Shah')
INSERT INTO users VALUES (4, 'ethanol20@gov.in', 'Nithin Gadkari')
SELECT * FROM users


CREATE TABLE books(product_id int PRIMARY KEY, title varchar(50), price float)
INSERT INTO books VALUES (1, 'Isobutanol Formulation', 500)
INSERT INTO books VALUES (2, 'Chutiya Janta Party', 400)
INSERT INTO books VALUES (3, 'Bulldozer Basics', 200)
INSERT INTO books VALUES (4, 'Virat Kohli Nudes', 300)
INSERT INTO books VALUES (5, 'Alchemist', 350)
INSERT INTO books VALUES (6, 'Think and grow rich', 100)
INSERT INTO books VALUES (7, 'Rich dad poor dad', 200)
INSERT INTO books VALUES (8, 'Subtle art of not giving a fuck', 250)
SELECT * FROM books

/* ALTER TABLE books
ALTER COLUMN price float */

/* alter table books alter column product_id  NOT NULL
ALTER TABLE books add constraint p_key primary key(product_id)
alter table books add constraint p_key primary key (product_id) */

DROP TABLE books

SELECT * FROM users
SELECT * FROM books
SELECT * FROM orders

CREATE TABLE orders(order_no int PRIMARY KEY, users_id int, product_id int, FOREIGN KEY (users_id) REFERENCES users(users_id) , FOREIGN KEY (product_id) REFERENCES books(product_id))

INSERT INTO orders VALUES (97, 1, 2)
INSERT INTO orders VALUES (98, 4, 1)
INSERT INTO orders VALUES (99, 3, 4)
INSERT INTO orders VALUES (100, 2, 3)
INSERT INTO orders VALUES (101, 1, 6)
INSERT INTO orders VALUES (102, 4, 7)
INSERT INTO orders VALUES (103, 4, 8)
INSERT INTO orders VALUES (104, 2, 5)


