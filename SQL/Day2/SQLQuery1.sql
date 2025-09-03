CREATE DATABASE society;
USE society;
CREATE TABLE apt(flat_no int, resident_name varchar(50), resident_contact varchar(10));
INSERT INTO apt(flat_no, resident_name, resident_contact) VALUES (305, 'Piyush', '1234567890');
INSERT INTO apt(flat_no, resident_name, resident_contact) VALUES (102, 'Lakshay', '1234509876');
INSERT INTO apt(flat_no, resident_name, resident_contact) VALUES (105, 'Shivansh', '1287654390');
INSERT INTO apt(flat_no, resident_name, resident_contact) VALUES (105, 'Mohith', '1238765490');

UPDATE apt SET flat_no = 104 WHERE resident_name = 'Mohith';
DELETE FROM apt WHERE (resident_name = 'Mohith' AND resident_contact = '1234567890');
SELECT * FROM apt;

CREATE TABLE emp(empID int, empName varchar(50), Dept varchar(10), Salary int);
INSERT INTO emp VALUES (111, 'Piyush Kumar', 'SDE', 100000), (112, 'Lakshay Saxena', 'SDE', 90000), 
(113, 'Shivansh', 'SDE', 80000), 
(114, 'Mohith Vathi', 'AI', 85000);
SELECT * FROM emp;
