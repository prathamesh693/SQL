-- EXCEPT

-- Get first names in demographics not in salary
SELECT first_name FROM employee_demographics EXCEPT SELECT first_name FROM employee_salary;

-- Get last names in demographics not in salary
SELECT last_name FROM employee_demographics EXCEPT SELECT last_name FROM employee_salary;

-- Get ages not associated with any salaries
SELECT age FROM employee_demographics EXCEPT SELECT salary FROM employee_salary;

-- Get department IDs not in demographics
SELECT dept_id FROM employee_salary EXCEPT SELECT employee_ID FROM employee_demographics;

-- Get genders not associated with any salaries
SELECT gender FROM employee_demographics EXCEPT SELECT occupation FROM employee_salary;

-- Get occupations not linked to demographics
SELECT occupation FROM employee_salary EXCEPT SELECT first_name FROM employee_demographics;

-- Get salaries not linked to demographics
SELECT salary FROM employee_salary EXCEPT SELECT age FROM employee_demographics;

-- Get first names not linked to any department IDs
SELECT first_name FROM employee_demographics EXCEPT SELECT dept_id FROM employee_salary;

-- Get ages not linked to any occupations
SELECT age FROM employee_demographics EXCEPT SELECT occupation FROM employee_salary;

-- Get department IDs not linked to any genders
SELECT dept_id FROM employee_salary EXCEPT SELECT gender FROM employee_demographics;