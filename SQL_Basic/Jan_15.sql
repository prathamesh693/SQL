-- JOIN

-- FULL OUTER JOIN
-- INNER JOIN 
-- LEFT JOIN 
-- RIGHT JOIN


UPDATE sql_basic.employee_demographics SET employee_ID = 101 WHERE (employee_ID = 1);
UPDATE sql_basic.employee_demographics SET employee_ID = 102 WHERE (employee_ID = 3);
UPDATE sql_basic.employee_demographics SET employee_ID = 103 WHERE (employee_ID = 4);
UPDATE sql_basic.employee_demographics SET employee_ID = 104 WHERE (employee_ID = 5);
UPDATE sql_basic.employee_demographics SET employee_ID = 105 WHERE (employee_ID = 6);
UPDATE sql_basic.employee_demographics SET employee_ID = 106 WHERE (employee_ID = 7);
UPDATE sql_basic.employee_demographics SET employee_ID = 107 WHERE (employee_ID = 8);
UPDATE sql_basic.employee_demographics SET employee_ID = 108 WHERE (employee_ID = 9);
UPDATE sql_basic.employee_demographics SET employee_ID = 109 WHERE (employee_ID = 10);
UPDATE sql_basic.employee_demographics SET employee_ID = 110 WHERE (employee_ID = 11);
UPDATE sql_basic.employee_demographics SET employee_ID = 111 WHERE (employee_ID = 12);



-- Retrieves matching records from both tables based on employee_ID.
SELECT sql_basic.employee_demographics.employee_ID, sql_basic.employee_demographics.first_name, sql_basic.employee_salary.salary
FROM sql_basic.employee_demographics
INNER JOIN sql_basic.employee_salary ON sql_basic.employee_demographics.employee_ID = sql_basic.employee_salary.employee_id;

-- Includes all employees from employee_demographics, even if they don't have salary data in employee_salary.
SELECT sql_basic.employee_demographics.employee_ID, sql_basic.employee_demographics.first_name, sql_basic.employee_salary.salary
FROM sql_basic.employee_demographics
LEFT JOIN sql_basic.employee_salary ON sql_basic.employee_demographics.employee_ID = sql_basic.employee_salary.employee_id;

-- Includes all records from employee_salary, even if there's no matching employee in employee_demographics.
SELECT sql_basic.employee_demographics.employee_ID, sql_basic.employee_salary.salary
FROM sql_basic.employee_demographics 
RIGHT JOIN sql_basic.employee_salary ON sql_basic.employee_demographics.employee_ID = sql_basic.employee_salary.employee_id;


-- Generates all combinations of employees and occupations without any condition.
SELECT sql_basic.employee_demographics.first_name, sql_basic.employee_salary.occupation
FROM sql_basic.employee_demographics
CROSS JOIN sql_basic.employee_salary;

-- Calculates the average salary for each gender using a GROUP BY clause.
SELECT sql_basic.employee_demographics.gender, AVG(sql_basic.employee_salary.salary) AS avg_salary
FROM sql_basic.employee_demographics
INNER JOIN sql_basic.employee_salary ON sql_basic.employee_demographics.employee_ID = sql_basic.employee_salary.employee_id
GROUP BY sql_basic.employee_demographics.gender;

-- Retrieves employees with salaries greater than 50,000 by combining a subquery with a JOIN.
SELECT sql_basic.employee_demographics.first_name, sql_basic.employee_demographics.last_name, sql_basic.employee_salary.salary
FROM sql_basic.employee_demographics
INNER JOIN (
    SELECT employee_id, salary
    FROM sql_basic.employee_salary
    WHERE salary > 50000
) sql_basic.employee_salary ON sql_basic.employee_demographics.employee_ID = sql_basic.employee_salary.employee_id;

-- Matches records based on multiple conditions: employee_ID, salary > 50,000, and department ID = 101.
SELECT employee_demographics.employee_ID, employee_demographics.first_name, employee_salary.salary, employee_salary.occupation
FROM sql_basic.employee_demographics
INNER JOIN Sql_basic.employee_salary ON sql_basic.employee_demographics.employee_ID = sql_basic.employee_salary.employee_id AND
 sql_basic.employee_salary.salary > 50000 AND sql_basic.employee_salary.dept_id = 101;
