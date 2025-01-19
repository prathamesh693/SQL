-- Lower Fucntion
-- Upper function
-- Trim Function
-- Count of string
-- LEFT AND RIGHT Function 
-- SUBSTRING Function
-- Replace Function
-- LOCATE FUNCTION
-- CONCAT FUNCTION
-- CASE



-- Count of string 
select length("Sky") ;

--  Retribe data with length of last name
select first_name,length(last_name) from employee_demographics;

-- Show the data with UPPER case of last name of employee
select first_name,upper(last_name) from employee_demographics;

-- Again change the upper last name to lower last name
select lower(last_name),salary from employee_salary;

-- Trim
select rtrim('      sky      ');
 
 -- LEFT AND RIGHT Function
 SELECT * FROM employee_demographics;
 
 SELECT first_name,
 left(first_name,4),
 right(first_name,4)
 -- Complusary to define how many charector you want from left
 from employee_demographics;
 
 -- SUBSTRING Function
 SELECT first_name,
 substring(first_name,3,2),
  -- Starting from 3rd position and give 2 charector.
 
 -- Which month the employee born
 substring(birth_date,6,2) as birth_month
 from employee_demographics;
 
 -- Replace Function
 -- We can replace any charector of string i.e. 
 -- first name or last name
 
 SELECT first_name,REPLACE(first_name,'a','z')
 -- replace A with z;
 FROM employee_demographics;
 -- Donsha	Donshz

 -- LOCATE FUNCTION
 SELECT LOCATE('E','PRATHAMESH');
 
 -- locate An is first_name String 
 SELECT first_name,LOCATE('An',first_name)
 FROM employee_demographics;
 
 -- CONCAT() 
 SELECT first_name,last_name,
 CONCAT(first_name,' ',last_name) AS Full_Name
 -- concat last name with first name.
 -- To access Full Name of employee.
 FROM employee_demographics;

--CASE
SELECT first_name,
last_name,
age,
CASE
-- check the age of an employee if age is less than or
-- equal to 30 then mark it as Young 
-- 
	WHEN age<=30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'OLD'
    WHEN age >=51 THEN "On Death's Door"
END AS Young_employee
FROM employee_demographics;