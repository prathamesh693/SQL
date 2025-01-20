-- LIMIT

-- Get the first 5 employees from the demographics table
SELECT * FROM Employee_Demographics LIMIT 5;

-- Get the first 3 employees from the salary table
SELECT * FROM Employee_Salary LIMIT 3;

-- Get 10 employees with the highest salary
SELECT * FROM Employee_Salary ORDER BY salary DESC LIMIT 10;

-- Get 2 youngest employees
SELECT * FROM Employee_Demographics ORDER BY Age ASC LIMIT 2;

-- Get the top 7 employees based on department ID
SELECT * FROM Employee_Salary ORDER BY Employee_ID DESC LIMIT 7;

-- Get 4 oldest employees
SELECT * FROM Employee_Demographics ORDER BY Age DESC LIMIT 4;

-- Get the first 6 employees sorted by first name
SELECT * FROM Employee_Demographics ORDER BY First_Name ASC LIMIT 6;

-- Get the top 5 highest-paid employees
SELECT * FROM Employee_Salary ORDER BY salary DESC LIMIT 5;

-- Get the first 8 employees sorted by last name
SELECT * FROM Employee_Salary ORDER BY Last_Name ASC LIMIT 8;

-- Get the youngest 3 male employees
SELECT * FROM Employee_Demographics WHERE Gender = 'Male' ORDER BY Age ASC LIMIT 3;