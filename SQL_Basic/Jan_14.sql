-- Substring with 
-- Functions like count, min, max,avg
-- Pattern Maching


-- 
SELECT first_name,salary,
(SELECT AVG(salary) 
FROM sql_basic.employee_salary)
FROM sql_basic.employee_salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM sql_basic.employee_demographics
GROUP BY gender;


-- Retrive the names of an employee who name starting with 'A'
SELECT * 
FROM sql_basic.employee_demographics
WHERE first_name LIKE 'A%';
-- Matches names like 'Andy', 'Ann'

-- Retrive the name of employee who's name ending with 'e'
SELECT * 
FROM sql_basic.employee_demographics
WHERE first_name LIKE '%e';
-- Matches names like 'Leslie', 'Creig', 'Jerry'

-- Access an employee name containing 'on' on his/her name.
SELECT * 
FROM sql_basic.employee_demographics
WHERE first_name LIKE '%on%';
-- Matches names like 'Donsha'

-- Name of an employee have exactly four characters.
SELECT * 
FROM sql_basic.employee_demographics
WHERE first_name LIKE '____';
-- Matches names like 'Andy', 'Mark'

--Retrive naem with 'a' as second letter
SELECT * FROM sql_basic.employee_demographics
WHERE first_name LIKE '_a%';
-- Matches names like 'Mark'

-- Retrive names with 'r' as the third letter.
SELECT * FROM sql_basic.employee_demographics
WHERE first_name LIKE '__r%';
-- Matches names like 'Jerry', 'Creig'

-- Retrive the names starting with 'C' and ending with 'g'
SELECT * FROM sql_basic.employee_demographics
WHERE first_name LIKE 'C%g';
-- Matches names like 'Creig'

--Retrive names ending with vowel
SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%a' 
   OR first_name LIKE '%e' 
   OR first_name LIKE '%i' 
   OR first_name LIKE '%o' 
   OR first_name LIKE '%u';
-- Matches names like 'Leslie', 'Donsha'

-- Access names starting with any letter from 'A' to 'M'
SELECT * 
FROM employee_demographics
WHERE first_name LIKE '[A-M]%';
-- Matches names like 'Andy', 'April', 'Jerry' (dialect-dependent)