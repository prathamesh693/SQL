-- Group by clause

-- GROUP OF MALE AND FEMALE WITH THEIR COUNT  
SELECT gender, COUNT(*) FROM employee_demographics GROUP BY gender;

-- Retrive the AVG salary and group of dept_id their AVG
SELECT dept_id, AVG(salary) FROM employee_salary GROUP BY dept_id;

--  Get the total salary by occupation
SELECT occupation, SUM(salary) FROM employee_salary GROUP BY occupation;

-- Count employees by first name
SELECT first_name, COUNT(*) FROM employee_salary GROUP BY first_name;

-- Get the maximum salary by department
SELECT dept_id, MAX(salary) FROM employee_salary GROUP BY dept_id;

-- Count employees by age
SELECT age, COUNT(*) FROM employee_demographics GROUP BY age;

-- Calculate the average age by gender
SELECT gender, AVG(age) FROM employee_demographics GROUP BY gender;

-- Count employees by last name
SELECT last_name, COUNT(*) FROM employee_salary GROUP BY last_name;

-- Count employees by department
SELECT dept_id, COUNT(*) FROM employee_salary GROUP BY dept_id;

-- Count employees by occupation
SELECT occupation, COUNT(*) FROM employee_salary GROUP BY occupation;