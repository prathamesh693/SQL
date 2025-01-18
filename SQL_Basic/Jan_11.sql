SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;


-- SELECT STATEMENT
SELECT * FROM employee_demographics;

-- Retrive the perticular tables columns 
SELECT employee_demographics.first_name
FROM employee_demographics;

-- Retrive data without mension the table name for perticular columns name
SELECT employee_ID,first_name,salary FROM employee_salary;

-- Spesific Column with both table
SELECT employee_demographics.first_name,employee_salary.salary 
FROM employee_demographics,employee_salary;

-- #### Select The Distinct data set ### 
-- Using Select Statament
SELECT distinct salary ,first_name FROM employee_salary;

-- Retrive the perticular tables columns 
SELECT distinct first_name
FROM employee_demographics;

-- Retrive data without mension the table name for perticular columns name
SELECT distinct employee_demographics.age FROM employee_demographics;

-- Spesific Column with both table
SELECT distinct employee_demographics.first_name,employee_salary.salary 
FROM employee_demographics,employee_salary;

-- count distinct age then count distinct gender
SELECT count(distinct age) as unique_value
FROM employee_demographics;

SELECT count(distinct gender) as unique_value
FROM employee_demographics;