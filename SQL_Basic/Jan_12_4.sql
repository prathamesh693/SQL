-- HAVING CLAUSE

-- Get average age by gender and filter groups with avg age > 35
SELECT gender, AVG(age) AS avg_age FROM employee_demographics GROUP BY gender HAVING avg_age > 35;

-- Count employees by department, filter groups with more than 5 employees
SELECT dept_id, COUNT(*) AS num_employees FROM employee_salary GROUP BY dept_id HAVING num_employees > 5;

-- Get total salary by occupation and filter groups with total salary > 500,000
SELECT occupation, SUM(salary) AS total_salary FROM employee_salary GROUP BY occupation HAVING total_salary > 500000;

-- Get maximum salary by department and filter groups with max salary > 52,000
SELECT dept_id, MAX(salary) AS max_salary FROM employee_salary GROUP BY dept_id HAVING max_salary > 52000;

-- Get average salary by occupation and filter groups with avg salary > 50,000
SELECT occupation, AVG(salary) AS avg_salary FROM employee_salary GROUP BY occupation HAVING avg_salary > 50000;

-- Count employees by department, filter groups with more than one employee
SELECT dept_id, COUNT(*) FROM employee_salary GROUP BY dept_id HAVING COUNT(*) > 1;

-- Get minimum salary by occupation, filter groups with minimum salary > 50,000
SELECT occupation, MIN(salary) FROM employee_salary GROUP BY occupation HAVING MIN(salary) > 50000;

-- Count employees by gender, filter groups with more than three employees
SELECT gender, COUNT(*) FROM employee_demographics GROUP BY gender HAVING COUNT(*) > 3;

-- Get average salary by department and filter groups with avg salary > 52,000
SELECT dept_id, AVG(salary) FROM employee_salary GROUP BY dept_id HAVING AVG(salary) > 52000;

-- Get maximum salary by occupation and filter groups with max salary > 52,000
SELECT occupation, MAX(salary) FROM employee_salary GROUP BY occupation HAVING MAX(salary) > 52000;