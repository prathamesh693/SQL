-- EXCEPT

-- Get first names in demographics not in Salary
SELECT First_Name FROM Employee_Demographics EXCEPT SELECT First_Name FROM Employee_Salary;

-- Get last names in demographics not in Salary
SELECT Last_Name FROM Employee_Demographics EXCEPT SELECT Last_Name FROM Employee_Salary;

-- Get ages not associated with any salaries
SELECT age FROM Employee_Demographics EXCEPT SELECT Salary FROM Employee_Salary;

-- Get department IDs not in demographics
SELECT Employee_ID FROM Employee_Salary EXCEPT SELECT employee_ID FROM Employee_Demographics;

-- Get genders not associated with any salaries
SELECT gender FROM Employee_Demographics EXCEPT SELECT Job_Title FROM Employee_Salary;

-- Get Job_Titles not linked to demographics
SELECT Job_Title FROM Employee_Salary EXCEPT SELECT First_Name FROM Employee_Demographics;

-- Get salaries not linked to demographics
SELECT Salary FROM Employee_Salary EXCEPT SELECT age FROM Employee_Demographics;

-- Get first names not linked to any department IDs
SELECT First_Name FROM Employee_Demographics EXCEPT SELECT Employee_ID FROM Employee_Salary;

-- Get ages not linked to any Job_Titles
SELECT age FROM Employee_Demographics EXCEPT SELECT Job_Title FROM Employee_Salary;

-- Get department IDs not linked to any genders
SELECT Employee_ID FROM Employee_Salary EXCEPT SELECT gender FROM Employee_Demographics;