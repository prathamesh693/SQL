-- LIMIT

-- Get the first 5 employees from the demographics table
SELECT * FROM employee_demographics LIMIT 5;

-- Get the first 3 employees from the salary table
SELECT * FROM employee_salary LIMIT 3;

-- Get 10 employees with the highest salary
SELECT * FROM employee_salary ORDER BY salary DESC LIMIT 10;

-- Get 2 youngest employees
SELECT * FROM employee_demographics ORDER BY age ASC LIMIT 2;

-- Get the top 7 employees based on department ID
SELECT * FROM employee_salary ORDER BY dept_id DESC LIMIT 7;

-- Get 4 oldest employees
SELECT * FROM employee_demographics ORDER BY age DESC LIMIT 4;

-- Get the first 6 employees sorted by first name
SELECT * FROM employee_demographics ORDER BY first_name ASC LIMIT 6;

-- Get the top 5 highest-paid employees
SELECT * FROM employee_salary ORDER BY salary DESC LIMIT 5;

-- Get the first 8 employees sorted by last name
SELECT * FROM employee_salary ORDER BY last_name ASC LIMIT 8;

-- Get the youngest 3 male employees
SELECT * FROM employee_demographics WHERE gender = 'Male' ORDER BY age ASC LIMIT 3;