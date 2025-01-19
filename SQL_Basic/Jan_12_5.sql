-- Distinct Clause

-- Get unique genders from the demographics table
SELECT DISTINCT gender FROM employee_demographics;

-- Get unique occupations from the salary table
SELECT DISTINCT occupation FROM employee_salary;

-- Get unique ages from the demographics table
SELECT DISTINCT age FROM employee_demographics;

-- Get unique department IDs from the salary table
SELECT DISTINCT dept_id FROM employee_salary;

-- Get unique salaries from the salary table
SELECT DISTINCT salary FROM employee_salary;

-- Get unique birth dates from the demographics table
SELECT DISTINCT birth_date FROM employee_demographics;

-- Get unique first names from the demographics table
SELECT DISTINCT first_name FROM employee_demographics;

-- Get unique last names from the salary table
SELECT DISTINCT last_name FROM employee_salary;

-- Get unique combinations of occupation and salary
SELECT DISTINCT occupation, salary FROM employee_salary;

-- Get unique combinations of gender and age
SELECT DISTINCT gender, age FROM employee_demographics;