USE shop

CREATE VIEW user_ordered_books
AS
SELECT * FROM (books b INNER JOIN orders o ON b.product_id=o.product_id)
INNER JOIN users u ON u.users_id=o.users_id