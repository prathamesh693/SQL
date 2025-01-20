-- OORDER BY

-- Order employees by Age in ascending order
SELECT * FROM Employee_Demographics ORDER BY Age ASC;

-- Order employees by Salary in descending order
SELECT * FROM Employee_Salary ORDER BY Salary DESC;

-- Order employees by first name in ascending order
SELECT * FROM Employee_Demographics ORDER BY First_Name ASC;

-- Order employees by department ID in descending order
SELECT * FROM Employee_Salary ORDER BY Employee_ID DESC;

-- Order employees by birth date in ascending order
SELECT * FROM Employee_Demographics ORDER BY Birth_Date ASC;

-- Order employees by first and last name
SELECT * FROM Employee_Salary ORDER BY First_Name, Last_Name;

-- Order employees by Salary, then department ID in descending order
SELECT * FROM Employee_Salary ORDER BY Salary, Employee_ID DESC;

-- Order employees by occupation and Salary in descending order
SELECT * FROM Employee_Salary ORDER BY Job_Title, Salary DESC;

-- Order employees by Age, then Gender in descending order
SELECT * FROM Employee_Demographics ORDER BY Age, Gender DESC;

-- Order employees by last name, then first name in ascending order
SELECT * FROM Employee_Demographics ORDER BY Last_Name, First_Name ASC;