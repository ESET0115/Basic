USE Employee_database

Select * FROM Employee

SELECT Dept_id, First_name, Last_name, Salary, ROW_NUMBER() OVER (ORDER BY Salary DESC) AS Popularity FROM Employee

SELECT Dept_id, First_name, Last_name, Salary, 
ROW_NUMBER() OVER (ORDER BY Salary DESC) AS Popularity, 
RANK() over (ORDER BY Salary DESC) AS Popularity_Rank, 
DENSE_RANK() over (ORDER BY Salary DESC) AS Popularity_Dense_Rank FROM Employee



SELECT Dept_id, First_name, Last_name, Salary, 
ROW_NUMBER() OVER (PARTITION BY Dept_id ORDER BY Salary DESC) AS Popularity FROM Employee