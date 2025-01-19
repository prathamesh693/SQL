-- UNION

-- Combine first names from both tables
SELECT first_name FROM employee_demographics UNION SELECT first_name FROM employee_salary;

-- Combine last names from both tables
SELECT last_name FROM employee_demographics UNION SELECT last_name FROM employee_salary;

-- Combine all genders and remove duplicates
SELECT gender FROM employee_demographics UNION SELECT gender FROM employee_salary;

-- Combine all distinct department IDs and ages
SELECT dept_id FROM employee_salary UNION SELECT age FROM employee_demographics;

-- Combine unique first names and occupations
SELECT first_name FROM employee_demographics UNION SELECT occupation FROM employee_salary;

-- Combine all employees born before 1980 or with a salary > 50,000
SELECT first_name, birth_date FROM employee_demographics WHERE birth_date < '1980-01-01'
UNION 
SELECT first_name, salary FROM employee_salary WHERE salary > 50000;

-- Combine all department IDs and unique last names
SELECT dept_id FROM employee_salary UNION SELECT last_name FROM employee_demographics;

-- Combine all ages and distinct genders
SELECT age FROM employee_demographics UNION SELECT gender FROM employee_salary;

-- Combine all first names and unique salaries
SELECT first_name FROM employee_demographics UNION SELECT salary FROM employee_salary;

-- Combine unique occupations and genders
SELECT occupation FROM employee_salary UNION SELECT gender FROM employee_demographics;