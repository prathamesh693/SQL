-- ## SQL CLAUSE
/*
1. Where	2. Group by	3. Order by	4. Having
5. Distinct	6. LIMIT	7. OFFSET	8. TOP
9. UNION	10. EXCEPT	11. INTERSECT	12. JOIN
13. ON	14. USING	15. WIHT	16. AS	17. CASE
*/

SELECT * FROM Employee_Demographics;
SELECT * FROM Employee_Salary;
-- WHERE CLAUSE

-- check Employee_Demographics details who Age is greater than 30;
SELECT * FROM Employee_Demographics WHERE Age > 30;

-- Retrive the data of an employee whocs salry is greater than 50000
SELECT * FROM Employee_Salary WHERE Salary > 50000;

-- Retrive the data os employee where Job_TItle is HR
SELECT * FROM Employee_Salary WHERE Job_TItle = 'HR';

-- Retive the data of all female employee 
SELECT * FROM Employee_Demographics WHERE Gender = 'Female';

-- Retrive the Salary of dept id is 1001;
SELECT * FROM Employee_Salary WHERE Employee_ID = 1001;

-- Retrive the employee whos first name is start with A
SELECT * FROM Employee_Demographics WHERE First_Name LIKE 'A%';

-- Access the data of employee who first name is Pam and last name is Beasley 
-- if both condition are true then only data retrive.
SELECT * FROM Employee_Salary WHERE First_Name = 'Pam' AND Last_Name = 'Beasley';

-- Retrive the employee data which date of birth is less than 1990-01-01
SELECT * FROM Employee_Demographics WHERE Birth_Date < '1990-01-01';

-- Retrive  all information of an employee who Salary is between 50000 to 60000
SELECT * FROM Employee_Salary WHERE Salary BETWEEN 50000 AND 60000;

-- Show the employee which Salary is null 
SELECT * FROM Employee_Salary WHERE Salary IS NULL;