-- Distinct Clause

-- Get unique Genders from the demographics table
SELECT DISTINCT Gender FROM Employee_Demographics;

-- Get unique Job_Titles from the Salary table
SELECT DISTINCT Job_Title FROM Employee_Salary;

-- Get unique Ages from the demographics table
SELECT DISTINCT Age FROM Employee_Demographics;

-- Get unique department IDs from the Salary table
SELECT DISTINCT Employee_ID FROM Employee_Salary;

-- Get unique salaries from the Salary table
SELECT DISTINCT Salary FROM Employee_Salary;

-- Get unique birth dates from the demographics table
SELECT DISTINCT Birth_Date FROM Employee_Demographics;

-- Get unique first names from the demographics table
SELECT DISTINCT First_Name FROM Employee_Demographics;

-- Get unique last names from the Salary table
SELECT DISTINCT Last_Name FROM Employee_Salary;

-- Get unique combinations of Job_Title and Salary
SELECT DISTINCT Job_Title, Salary FROM Employee_Salary;

-- Get unique combinations of Gender and Age
SELECT DISTINCT Gender, Age FROM Employee_Demographics	;