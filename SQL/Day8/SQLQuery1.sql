use shop

Select * FROM users
Select * FROM books
Select * FROM orders

SELECT * FROM books UNION ALL SELECT * FROM orders WHERE 



SELECT UPPER ('Piyush') AS UpperCase

SELECT LOWER ('PIYUSH') AS LowerCase

SELECT LEN (users_name) AS LengthCount FROM users

SELECT SUBSTRING ('Piyush',3,2) AS subString
SELECT SUBSTRING (title,4,5) AS subString FROM books

SELECT REVERSE (title) FROM books

SELECT REPLACE(title, 'Wedding', 'Shadi') FROM books
SELECT REPLACE('Tannu Mannu ki Wedding', 'Wedding', 'Shadi') AS ReversedHAHA


SELECT CONCAT(title, ' (', price, ')') AS Book_price FROM books
SELECT CONCAT('Piyush likes', ' Chocolate', ' Syrup') AS statementLOL

SELECT CAST (price as VARCHAR(20)) FROM books

SELECT GETDATE()

SELECT CONVERT (VARCHAR(10), GETDATE(), 103) AS Date_DDMMYYYY /* 103 is British format of date (DD/MM/YYYY) */


