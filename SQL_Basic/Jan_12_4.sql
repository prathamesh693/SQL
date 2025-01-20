-- HAVING CLAUSE

-- Get averAge Age by Gender and filter groups with avg Age > 30
SELECT Gender, AVG(Age) AS avg_Age FROM Employee_Demographics GROUP BY Gender HAVING avg_Age > 30;

-- Get total Salary by Job_Title and filter groups with total Salary > 50,000
SELECT Job_Title, SUM(Salary) AS total_Salary FROM Employee_Salary GROUP BY Job_Title HAVING total_Salary > 50000;

-- Get maximum Salary by department and filter groups with max Salary > 52,000
SELECT Employee_ID, MAX(Salary) AS max_Salary FROM Employee_Salary GROUP BY Employee_ID HAVING max_Salary > 52000;

-- Get averAge Salary by Job_Title and filter groups with avg Salary > 50,000
SELECT Job_Title, AVG(Salary) AS avg_Salary FROM Employee_Salary GROUP BY Job_Title HAVING avg_Salary > 50000;

-- Count employees by department, filter groups with more than one employee
SELECT Employee_ID, COUNT(*) FROM Employee_Salary GROUP BY Employee_ID HAVING COUNT(*) > 1;

-- Get minimum Salary by Job_Title, filter groups with minimum Salary > 50,000
SELECT Job_Title, MIN(Salary) FROM Employee_Salary GROUP BY Job_Title HAVING MIN(Salary) > 50000;

-- Count employees by Gender, filter groups with more than three employees
SELECT Gender, COUNT(*) FROM Employee_Demographics GROUP BY Gender HAVING COUNT(*) > 3;

-- Get Average Salary by department and filter groups with avg Salary > 52,000
SELECT Employee_ID, AVG(Salary) FROM Employee_Salary GROUP BY Employee_ID HAVING AVG(Salary) > 52000;

-- Get maximum Salary by Job_Title and filter groups with max Salary > 52,000
SELECT Job_Title, MAX(Salary) FROM Employee_Salary GROUP BY Job_Title HAVING MAX(Salary) > 52000;

