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
select First_Name,length(Last_Name) from Employee_Demographics;

-- Show the data with UPPER case of last name of employee
select First_Name,upper(Last_Name) from Employee_Demographics;

-- Again change the upper last name to lower last name
select lower(Last_Name),Salary from Employee_Salary;

-- Trim
select rtrim('      sky      ');
 
 -- LEFT AND RIGHT Function
 SELECT * FROM Employee_Demographics;
 
 SELECT First_Name,
 left(First_Name,4),
 right(First_Name,4)
 -- Complusary to define how many charector you want from left
 from Employee_Demographics;
 
 -- SUBSTRING Function
 SELECT First_Name,
 substring(First_Name,3,2),
  -- Starting from 3rd position and give 2 charector.
 
 -- Which month the employee born
 substring(birth_date,6,2) as birth_month
 from Employee_Demographics;
 
 -- Replace Function
 -- We can replace any charector of string i.e. 
 -- first name or last name
 
 SELECT First_Name,REPLACE(First_Name,'a','z')
 -- replace A with z;
 FROM Employee_Demographics;
 -- Donsha  Donshz

 -- LOCATE FUNCTION
 SELECT LOCATE('E','PRATHAMESH');
 
 -- locate An is First_Name String 
 SELECT First_Name,LOCATE('An',First_Name)
 FROM Employee_Demographics;
 
 -- CONCAT() 
 SELECT First_Name,Last_Name,
 CONCAT(First_Name,' ',Last_Name) AS Full_Name
 -- concat last name with first name.
 -- To access Full Name of employee.
 FROM Employee_Demographics;

-- CASE
SELECT First_Name,
Last_Name,
Age,
CASE
-- check the Age of an employee if Age is less than or
-- equal to 30 then mark it as Young 
-- 
    WHEN Age<=30 THEN 'Young'
    WHEN Age BETWEEN 31 AND 50 THEN 'OLD'
    WHEN Age >=51 THEN "On Death's Door"
END AS Young_employee
FROM Employee_Demographics;
