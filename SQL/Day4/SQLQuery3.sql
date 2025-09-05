CREATE DATABASE office
USE office

CREATE TABLE employee(id int PRIMARY KEY, names varchar(50), roles varchar(50), salary float)

INSERT INTO employee VALUES (1, 'Raju Rastogi', 'SDE', 5000000)
INSERT INTO employee VALUES (2, 'Ranchhod Das Chanchadd', 'CEO', 70000000)
INSERT INTO employee VALUES (3, 'Farhan', 'Marketing', 1400000)
INSERT INTO employee VALUES (4, 'Virus', 'HR', 1200000)
INSERT INTO employee VALUES (5, 'Milimeter', 'Janator', 100000)
INSERT INTO employee VALUES (7, 'Chatur Ramalingam', 'Senior Manager', 6000000)
INSERT INTO employee VALUES (8, 'Champ', 'baby', NULL)

SELECT * FROM employee

SELECT * FROM employee WHERE salary is NOT NULL

SELECT * FROM employee WHERE names like 'R%'
SELECT * FROM employee WHERE names like '%r'
SELECT * FROM employee WHERE names like 'R%i'
SELECT * FROM employee WHERE names like 'R%n%'

SELECT * FROM employee

SELECT * FROM employee WHERE salary = (SELECT MAX(salary) FROM employee)


SELECT * FROM employee WHERE salary in (SELECT salary FROM employee WHERE salary BETWEEN 700000 AND 100000000000)
SELECT COUNT(*) FROM employee

SELECT * FROM employee ORDER BY salary DESC

