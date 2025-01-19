-- ## SQL CLAUSE
/*
1. Where	2. Group by	3. Order by	4. Having
5. Distinct	6. LIMIT	7. OFFSET	8. TOP
9. UNION	10. EXCEPT	11. INTERSECT	12. JOIN
13. ON	14. USING	15. WIHT	16. AS	17. CASE
*/

-- WHERE CLAUSE

-- check employee_demographics details who age is greater than 40;
SELECT * FROM employee_demographics WHERE age > 40;

-- Retrive the data of an employee whocs salry is greater than 50000
SELECT * FROM employee_salary WHERE salary > 50000;

-- Retrive the data os employee where occupation is actor
SELECT * FROM employee_salary WHERE occupation = 'actor';

-- Retive the data of all female employee 
SELECT * FROM employee_demographics WHERE gender = 'Female';

-- Retrive the salary of dept id is 101;
SELECT * FROM employee_salary WHERE dept_id = 101;

-- Retrive the employee whos first name is start with A
SELECT * FROM employee_demographics WHERE first_name LIKE 'A%';

-- Access the data of employee who first name is roy and last name is joy 
-- if both condition are true then only data retrive.
SELECT * FROM employee_salary WHERE first_name = 'roy' AND last_name = 'joy';

-- Retrive the employee data which date of birth is less than 1990-01-01
SELECT * FROM employee_demographics WHERE birth_date < '1990-01-01';

-- Retrive  all information of an employee who salary is between 50000 to 60000
SELECT * FROM employee_salary WHERE salary BETWEEN 50000 AND 60000;

-- Show the employee which salary is null 
SELECT * FROM employee_salary WHERE salary IS NULL;
