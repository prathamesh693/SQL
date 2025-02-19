-- OVER() Window function

-- Calculate the average salary for each gender using the OVER() window function.
-- PARTITION BY Gender groups the rows by gender for the calculation.
SELECT dem.Gender, AVG(sal.Salary) OVER(PARTITION BY Gender ) AS AVG_SALARY
FROM Employee_Demographics AS dem
JOIN Employee_Salary AS sal ON dem.Employee_ID = sal.Employee_ID;

-- Calculate the overall average salary across all employees using the OVER() window function.
-- Without PARTITION BY, the calculation considers all rows as a single group.
SELECT dem.Gender, AVG(sal.Salary) OVER()
FROM Employee_Demographics AS dem
JOIN Employee_Salary AS sal ON dem.Employee_ID = sal.Employee_ID;