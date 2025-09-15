USE shop

/* Procedure 1 */

CREATE PROCEDURE retrive_data
AS
BEGIN
SELECT * FROM books

end

exec retrive_data

DROP PROCEDURE retrive_data

/* Procedure 2 */

CREATE PROCEDURE retrive_data
@product_id int
AS
BEGIN
SELECT * FROM books WHERE product_id = @product_id

end

exec retrive_data @product_id = 4

/* Procedure 3 */

USE Employee_database

SELECT * FROM employee

CREATE PROCEDURE CheckEmpSalary
@Emp_id int
AS
BEGIN

	DECLARE @Salary INT;
	
	SELECT @Salary = Salary
	FROM employee
	WHERE Emp_id = @Emp_id;

	IF @Salary >= 50000
		PRINT 'High salary package';

	IF @Salary >= 30000
		PRINT 'Medium salary package';

	ELSE PRINT 'Low salary package';

end

exec CheckEmpSalary

