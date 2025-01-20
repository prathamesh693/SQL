-- Group by clause

-- GROUP OF MALE AND FEMALE WITH THEIR COUNT  
SELECT Gender, COUNT(*) FROM Employee_Demographics GROUP BY Gender;

-- Retrive the AVG Salary and group of Employee_ID their AVG
SELECT Employee_ID, AVG(Salary) FROM Employee_Salary GROUP BY Employee_ID;

--  Get the total Salary by Job_TItle
SELECT Job_TItle, SUM(Salary) FROM Employee_Salary GROUP BY Job_TItle;

-- Count employees by first name
SELECT First_Name, COUNT(*) FROM Employee_Salary GROUP BY First_Name;

-- Get the maximum Salary by department
SELECT Employee_ID, MAX(Salary) FROM Employee_Salary GROUP BY Employee_ID;

-- Count employees by Age
SELECT Age, COUNT(*) FROM Employee_Demographics GROUP BY Age;

-- Calculate the averAge Age by Gender
SELECT Gender, AVG(Age) FROM Employee_Demographics GROUP BY Gender;

-- Count employees by last name
SELECT Last_Name, COUNT(*) FROM Employee_Salary GROUP BY Last_Name;

-- Count employees by department
SELECT Employee_ID, COUNT(*) FROM Employee_Salary GROUP BY Employee_ID;

-- Count employees by Job_TItle
SELECT Job_TItle, COUNT(*) FROM Employee_Salary GROUP BY Job_TItle;