-- OFFSET

-- Skip the first 5 employees and get the next 5 from the demographics table
SELECT * FROM Employee_Demographics LIMIT 5 OFFSET 5;

-- Skip the first 3 employees and get the next 4 from the salary table
SELECT * FROM Employee_Salary LIMIT 4 OFFSET 3;

-- Get the 6th to 10th highest-paid employees
SELECT * FROM Employee_Salary ORDER BY salary DESC LIMIT 5 OFFSET 5;

-- Get the 4th to 6th youngest employees
SELECT * FROM Employee_Demographics ORDER BY Age ASC LIMIT 3 OFFSET 3;

-- Skip the first 7 employees and get the next 3 by department ID
SELECT * FROM Employee_Salary ORDER BY Job_Title DESC LIMIT 3 OFFSET 7;

-- Skip the first 2 employees and get the next 4 oldest employees
SELECT * FROM Employee_Demographics ORDER BY Age DESC LIMIT 4 OFFSET 2;

-- Skip the first 4 employees and get the next 6 by first name
SELECT * FROM Employee_Demographics ORDER BY First_Name ASC LIMIT 6 OFFSET 4;

-- Skip the first 8 employees and get the next 4 highest-paid
SELECT * FROM Employee_Salary ORDER BY salary DESC LIMIT 4 OFFSET 8;

-- Get the 9th to 12th employees sorted by last name
SELECT * FROM Employee_Salary ORDER BY Last_Name ASC LIMIT 4 OFFSET 8;

-- Skip the first 2 male employees and get the next 5 youngest
SELECT * FROM Employee_Demographics WHERE Gender = 'Male' ORDER BY Age ASC LIMIT 5 OFFSET 2;