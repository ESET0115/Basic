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

/*INNER JOIN*/
SELECT *
FROM users ut
INNER JOIN orders ot
ON ut.users_id = ot.users_id

/*LEFT JOIN*/
SELECT *
FROM users ut
LEFT JOIN orders ot
ON ut.users_id = ot.users_id

/*RIGHT JOIN*/
SELECT *
FROM users ut
RIGHT JOIN orders ot
ON ut.users_id = ot.users_id

/*OUTER JOIN*/
SELECT *
FROM users ut
FULL OUTER JOIN orders ot
ON ut.users_id = ot.users_id

INSERT INTO users values (5, 'manu@gmail.com', 'Manu')
INSERT INTO users values (6, 'sam@gmail.com', 'Sam')
INSERT INTO users values (7, 'shreyansh@gmail.com', 'Shreyansh')

INSERT INTO books values (5, 'learning', 99000)
INSERT INTO books values (6, 'Quran', 911)
INSERT INTO books values (7, 'Wedding', 2300)

INSERT INTO orders values (101, 5, 7)
INSERT INTO orders values (102, 6, 5)
INSERT INTO orders values (103, 7, 6)


/* Find all the books, all the users, and all the orders */
SELECT * FROM (books b FULL OUTER JOIN orders o ON b.product_id=o.product_id)
FULL OUTER JOIN users u ON u.users_id=o.users_id

/* Find all orders */
SELECT o.order_no, b.product_id, b.title, b.price FROM books b FULL OUTER JOIN orders o ON b.product_id=o.product_id

/* Find particular user who has order these books */
SELECT b.price, u.users_name, b.title FROM (books b INNER JOIN orders o ON b.product_id=o.product_id)
INNER JOIN users u ON u.users_id=o.users_id WHERE b.title='Quran' OR b.title='Wedding' OR b.title='Virat Kohli Nudes'

/* Find books users has order*/
SELECT u.users_id, u.users_name, u.users_email, b.title FROM (books b INNER JOIN orders o ON b.product_id=o.product_id)
INNER JOIN users u ON u.users_id=o.users_id 
