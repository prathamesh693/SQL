-- Temporary Tables 
/*
Temporary tables in SQL are special tables that exist only for
 a specific session or transaction. They are primarily used 
to store intermediate results temporarily.
## There are two type of Temporary Tables 
1. Local Temporary Table
-- Only Created within the session
-- Automatically Deleted when session ends.
2. Global Temporary Table (## temp)
-- Accessible by multiple Sessions
-- Dropped when the last session referencing it ends.
*/
-- Objective 
-- Storing intermediate results

-- ### 1. Local Temporary Table
-- Syntax
CREATE TEMPORARY TABLE temp_table
(first_name varchar(50), last_name varchar(50),favorite_movies varchar(100)
);

INSERT INTO temp_table VALUES ('Pratham','Jadhav','Om Santi Om'),
('Shryesh','Thube','Main hon na');

SELECT * FROM temp_table;

CREATE TEMPORARY TABLE salary_over_50k
SELECT * FROM employee_salary 
WHERE Salary>50000;

SELECT * FROM salary_over_50k;