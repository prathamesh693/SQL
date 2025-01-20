-- JOIN

-- INNER JOIN 
-- OUTER JOIN
    -- LEFT JOIN 
    -- RIGHT JOIN
    -- FULL JOIN
-- CROSS JOIN

UPDATE sql_basic.Employee_Demographics SET Employee_ID = 101 WHERE (Employee_ID = 1);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 102 WHERE (Employee_ID = 3);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 103 WHERE (Employee_ID = 4);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 104 WHERE (Employee_ID = 5);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 105 WHERE (Employee_ID = 6);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 106 WHERE (Employee_ID = 7);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 107 WHERE (Employee_ID = 8);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 108 WHERE (Employee_ID = 9);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 109 WHERE (Employee_ID = 10);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 110 WHERE (Employee_ID = 11);
UPDATE sql_basic.Employee_Demographics SET Employee_ID = 111 WHERE (Employee_ID = 12);

-- Returns all rows when there is a match in one of the tables.
-- If there’s no match, NULL is returned for the columns of the missing table.
SELECT e.Employee_ID, e.First_Name, s.Salary
FROM Employee_Demographics e
FULL JOIN Employee_Salary s ON e.Employee_ID = s.Employee_ID;


-- Retrieves matching records from both tables based on Employee_ID.
SELECT sql_basic.Employee_Demographics.Employee_ID, sql_basic.Employee_Demographics.First_Name, sql_basic.Employee_Salary.Salary
FROM sql_basic.Employee_Demographics
INNER JOIN sql_basic.Employee_Salary ON sql_basic.Employee_Demographics.Employee_ID = sql_basic.Employee_Salary.Employee_ID;

-- Includes all employees from employee_demographics, even if they don't have Salary data in employee_Salary.
SELECT sql_basic.Employee_Demographics.Employee_ID, sql_basic.Employee_Demographics.First_Name, sql_basic.Employee_Salary.Salary
FROM sql_basic.Employee_Demographics
LEFT JOIN sql_basic.Employee_Salary ON sql_basic.Employee_Demographics.Employee_ID = sql_basic.Employee_Salary.Employee_ID;

-- Includes all records from employee_Salary, even if there's no matching employee in employee_demographics.
SELECT sql_basic.Employee_Demographics.Employee_ID, sql_basic.Employee_Salary.Salary
FROM sql_basic.Employee_Demographics 
RIGHT JOIN sql_basic.Employee_Salary ON sql_basic.Employee_Demographics.Employee_ID = sql_basic.Employee_Salary.Employee_ID;

-- Calculates the average Salary for each gender using a GROUP BY clause.
SELECT sql_basic.Employee_Demographics.gender, AVG(sql_basic.Employee_Salary.Salary) AS avg_Salary
FROM sql_basic.Employee_Demographics
INNER JOIN sql_basic.Employee_Salary ON sql_basic.Employee_Demographics.Employee_ID = sql_basic.Employee_Salary.Employee_ID
GROUP BY sql_basic.Employee_Demographics.gender;

-- Retrieves employees with salaries greater than 50,000 by combining a subquery with a JOIN.
SELECT sql_basic.Employee_Demographics.First_Name, sql_basic.Employee_Demographics.Last_Name, sql_basic.Employee_Salary.Salary
FROM sql_basic.Employee_Demographics
INNER JOIN (
    SELECT Employee_ID, Salary
    FROM sql_basic.Employee_Salary
    WHERE Salary > 50000
) Employee_Salary ON sql_basic.Employee_Demographics.Employee_ID = sql_basic.Employee_Salary.Employee_ID;

-- Matches records based on multiple conditions: Employee_ID, Salary > 50,000, and department ID = 101.
SELECT employee_demographics.Employee_ID, 
employee_demographics.First_Name, employee_Salary.Salary, 
employee_Salary.Job_Title
FROM sql_basic.Employee_Demographics
INNER JOIN Sql_basic.Employee_Salary 
ON sql_basic.Employee_Demographics.Employee_ID = sql_basic.Employee_Salary.Employee_ID 
AND sql_basic.Employee_Salary.Salary > 5000
AND sql_basic.Employee_Salary.Employee_ID = 1001;

-- CROSS JOIN   :- All possible Combination of a both Table
SELECT e.First_Name, s.Salary
FROM Employee_Demographics e
CROSS JOIN Employee_Salary s;