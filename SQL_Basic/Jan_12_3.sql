-- OORDER BY

-- Order employees by age in ascending order
SELECT * FROM employee_demographics ORDER BY age ASC;

-- Order employees by salary in descending order
SELECT * FROM employee_salary ORDER BY salary DESC;

-- Order employees by first name in ascending order
SELECT * FROM employee_demographics ORDER BY first_name ASC;

-- Order employees by department ID in descending order
SELECT * FROM employee_salary ORDER BY dept_id DESC;

-- Order employees by birth date in ascending order
SELECT * FROM employee_demographics ORDER BY birth_date ASC;

-- Order employees by first and last name
SELECT * FROM employee_salary ORDER BY first_name, last_name;

-- Order employees by salary, then department ID in descending order
SELECT * FROM employee_salary ORDER BY salary, dept_id DESC;

-- Order employees by occupation and salary in descending order
SELECT * FROM employee_salary ORDER BY occupation, salary DESC;

-- Order employees by age, then gender in descending order
SELECT * FROM employee_demographics ORDER BY age, gender DESC;

-- Order employees by last name, then first name in ascending order
SELECT * FROM employee_demographics ORDER BY last_name, first_name ASC;