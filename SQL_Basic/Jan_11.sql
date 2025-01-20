SELECT * FROM Employee_Demographics;
SELECT * FROM Employee_Salary;

-- SELECT STATEMENT
SELECT * FROM Employee_Demographics;

-- Retrive the perticular tables columns 
SELECT Employee_Demographics.First_Name
FROM Employee_Demographics;

-- Retrive data without mension the table name for perticular columns name
SELECT Employee_ID,Salary FROM Employee_Salary;

-- Spesific Column with both table
SELECT Employee_Demographics.First_Name,Employee_Salary.Salary 
FROM Employee_Demographics,Employee_Salary;

-- #### Select The Distinct data set ### 
-- Using Select Statament
SELECT distinct Salary ,Employee_ID FROM Employee_Salary;

-- Retrive the perticular tables columns 
SELECT distinct First_Name
FROM Employee_Demographics;

-- Retrive data without mension the table name for perticular columns name
SELECT distinct Employee_Demographics.Age FROM Employee_Demographics;

-- Spesific Column with both table
SELECT distinct Employee_Demographics.First_Name,Employee_Salary.Salary 
FROM Employee_Demographics,Employee_Salary;

-- count distinct Age 
SELECT count(distinct Age) as unique_value
FROM Employee_Demographics;

-- Count distinct Gender 
SELECT count(distinct Gender) as unique_value
FROM Employee_Demographics;