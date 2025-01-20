Create database Sql_basic;
-- create database sql_basic;

-- Table 1 Query:
Create Table Employee_Demographics 
(Employee_ID int, 
First_Name varchar(50), 
Last_Name varchar(50), 
Age int, 
Gender varchar(50),
Birth_Date date
);

-- Table 2 Query:
Create Table Employee_Salary 
(Employee_ID int, 
Job_Title varchar(50), 
Salary int
);


-- Table 1 Insert:
INSERT INTO Employee_Demographics (Employee_ID, First_Name, Last_Name, Age, Gender, Birth_Date)
VALUES
(1001, 'Jim', 'Halpert', 30, 'Male', '1995-01-01'),
(1002, 'Pam', 'Beasley', 30, 'Female', '1995-01-01'),
(1003, 'Dwight', 'Schrute', 29, 'Male', '1996-01-01'),
(1004, 'Angela', 'Martin', 31, 'Female', '1994-01-01'),
(1005, 'Toby', 'Flenderson', 32, 'Male', '1993-01-01'),
(1006, 'Michael', 'Scott', 35, 'Male', '1990-01-01'),
(1007, 'Meredith', 'Palmer', 32, 'Female', '1993-01-01'),
(1008, 'Stanley', 'Hudson', 38, 'Male', '1987-01-01'),
(1009, 'Kevin', 'Malone', 31, 'Male', '1994-01-01');

-- Table 2 Insert:
Insert Into Employee_Salary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);

-- Add First and Last name columns.
ALTER TABLE Employee_Salary
ADD First_Name VARCHAR(50),
ADD Last_Name VARCHAR(50);

-- Update the First_Name and Last_Name of Employee_Salary
UPDATE Employee_Salary
SET First_Name = 'Jim', Last_Name = 'Halpert'
WHERE Employee_ID = 1001;

UPDATE Employee_Salary
SET First_Name = 'Pam', Last_Name = 'Beasley'
WHERE Employee_ID = 1002;

UPDATE Employee_Salary
SET First_Name = 'Dwight', Last_Name = 'Schrute'
WHERE Employee_ID = 1003;

UPDATE Employee_Salary
SET First_Name = 'Angela', Last_Name = 'Martin'
WHERE Employee_ID = 1004;

UPDATE Employee_Salary
SET First_Name = 'Toby', Last_Name = 'Flenderson'
WHERE Employee_ID = 1005;

UPDATE Employee_Salary
SET First_Name = 'Michael', Last_Name = 'Scott'
WHERE Employee_ID = 1006;

UPDATE Employee_Salary
SET First_Name = 'Meredith', Last_Name = 'Palmer'
WHERE Employee_ID = 1007;

UPDATE Employee_Salary
SET First_Name = 'Stanley', Last_Name = 'Hudson'
WHERE Employee_ID = 1008;

UPDATE Employee_Salary
SET First_Name = 'Kevin', Last_Name = 'Malone'
WHERE Employee_ID = 1009;
