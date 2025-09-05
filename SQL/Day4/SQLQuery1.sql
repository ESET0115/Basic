CREATE DATABASE school
USE school

CREATE TABLE student (id int PRIMARY KEY, names varchar(50))
SELECT * FROM student
INSERT INTO student VALUES (1, 'Shivam')
INSERT INTO student VALUES (2, 'Raj', 765432987)
INSERT INTO student VALUES (3, 'Shyam', 745432987)


ALTER TABLE student
ADD contact float

UPDATE student SET contact = 1234567809 WHERE id = 1

CREATE TABLE teachers (id int PRIMARY KEY, names varchar(50), subjects varchar(50), FOREIGN KEY (id) REFERENCES student(id))

INSERT INTO teachers VALUES (1, 'Mamta', 'Hindi')
INSERT INTO teachers VALUES (2, 'Shobha', 'Maths')

INSERT INTO teachers VALUES (3, 'Sandhya', 'English')

SELECT * FROM teachers
SELECT * FROM student




