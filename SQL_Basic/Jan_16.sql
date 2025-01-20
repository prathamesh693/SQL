-- Sub-Query
-- Window Function

-- Using sub-query retrive the avg,min,max and count of and age
SELECT * FROM (
SELECT Gender,avg(Age),min(Age),max(Age),count(Age)
FROM sql_basic.Employee_Demographics
GROUP BY Gender) AS Agg_table
-- Group by gender 
;

-- Use the output of one function to the others and perform operations on it.
SELECT Gender, AVG('max(Age)') FROM (
-- If we can't use inverted commas then it consider it as a function and 
-- gives an error to the query.
SELECT Gender,avg(Age)
FROM sql_basic.Employee_Demographics
GROUP BY Gender) AS Agg_table
GROUP BY Gender;

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