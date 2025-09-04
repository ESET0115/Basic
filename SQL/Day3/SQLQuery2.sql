CREATE DATABASE company

USE company
CREATE TABLE employee(id int, emp_name varchar(50), dept varchar(50), salary varchar(20));
INSERT INTO employee(id, emp_name, dept, salary) VALUES (1, 'Sarath', 'HR','200000');
INSERT INTO employee(id, emp_name, dept, salary) VALUES (2, 'Akash', 'IT','100000');
INSERT INTO employee(id, emp_name, dept, salary) VALUES (3, 'Abhishek', 'Senior HR','250000');
INSERT INTO employee(id, emp_name, dept, salary) VALUES (4, 'Kunal', 'Marketing','400000');
INSERT INTO employee(id, emp_name, dept, salary) VALUES (5, 'Sowmya', 'IT','100000');

SELECT * FROM employee

ALTER TABLE employee
ALTER COLUMN salary float

UPDATE employee SET salary = salary + salary*0.40 WHERE emp_name = 'Sowmya'

EXEC sp_rename 'employee', 'friends'
SELECT * FROM friends



ALTER TABLE friends
ADD frnd_address varchar(250)

ALTER TABLE friends
ADD contact varchar(13)


UPDATE friends SET frnd_address = 'C-Block, Kali pahadi ke peeche', contact = '1234098765' WHERE emp_name = 'Abhishek' 

UPDATE friends SET frnd_address = 'C-Block, Kali pahadi ke peeche', contact = '1234098765' WHERE emp_name = 'Abhishek' 