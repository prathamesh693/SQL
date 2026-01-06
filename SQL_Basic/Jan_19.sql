-- Stored Procedures
/*
-- It's help to store complex Queries 
-- Enhancing Performance of code
1. Encapsulation – Group multiple SQL queries into a single unit.
2. Performance Optimization – Reduces query execution time since it's precompiled.
3. Code Reusability – Avoids rewriting the same SQL queries.
4. Security – Restricts direct access to tables by allowing controlled execution.
5. Maintainability – Centralized SQL logic simplifies updates and debugging.
*/

-- Syntax
CREATE PROCEDURE large_salaries()
SELECT * FROM employee_salary
WHERE salary > 50000;

-- Call
CALL large_salaries();

-- Multiple Query Procedures
-- First Two Procedure if the procedure is already created as same name
DROP PROCEDURE IF EXISTS large_salaries2;
DELIMITER $$

CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT * FROM employee_salary
	WHERE salary > 50000;
	SELECT * FROM employee_salary
	WHERE salary > 10000;
END $$
DELIMITER ;

-- CALL
CALL large_salaries2();
--  As we combine two queries for that we got two output Tables.