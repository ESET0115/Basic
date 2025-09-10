USE shop

SELECT * FROM users
SELECT * FROM books
SELECT * FROM orders

SELECT * FROM (books b FULL OUTER JOIN orders o ON b.product_id=o.product_id)
FULL OUTER JOIN users u ON u.users_id=o.users_id

/* Assignment 1 */

SELECT u.users_id, u.users_name, b.product_id, b.title, b.price,
ROW_NUMBER() OVER (PARTITION BY u.users_id ORDER BY b.price DESC) AS Best_seller, 
RANK() over (PARTITION BY u.users_id ORDER BY b.price DESC) AS Best_seller_Rank, 
DENSE_RANK() over (PARTITION BY u.users_id ORDER BY b.price DESC) AS Best_seller_Dense_Rank
FROM (books b INNER JOIN orders o ON b.product_id=o.product_id)
INNER JOIN users u ON u.users_id=o.users_id


