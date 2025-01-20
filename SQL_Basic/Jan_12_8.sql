-- UNION

-- Combine first names from both tables
SELECT First_Name FROM Employee_Demographics UNION SELECT First_Name FROM Employee_Salary;

-- Combine last names from both tables
SELECT last_name FROM Employee_Demographics UNION SELECT last_name FROM Employee_Salary;

-- Combine all Genders and Job_Title and remove duplicates
SELECT Gender FROM Employee_Demographics UNION SELECT Job_Title FROM Employee_Salary;

-- Combine all distinct department IDs and Ages
SELECT Employee_ID FROM Employee_Salary UNION SELECT Age FROM Employee_Demographics;

-- Combine unique first names and Job_Titles
SELECT First_Name FROM Employee_Demographics UNION SELECT Job_Title FROM Employee_Salary;

-- Combine all employees born before 1980 or with a Salary > 50,000
SELECT First_Name, Birth_Date FROM Employee_Demographics WHERE Birth_Date < '1980-01-01'
UNION 
SELECT First_Name, Salary FROM Employee_Salary WHERE Salary > 50000;

-- Combine all department IDs and unique last names
SELECT Employee_ID FROM Employee_Salary UNION SELECT last_name FROM Employee_Demographics;

-- Combine all Ages and distinct JOb_Title
SELECT Age FROM Employee_Demographics UNION SELECT Job_Title FROM Employee_Salary;

-- Combine all first names and unique salaries
SELECT First_Name FROM Employee_Demographics UNION SELECT Salary FROM Employee_Salary;

-- Combine unique Job_Titles and Genders
SELECT Job_Title FROM Employee_Salary UNION SELECT Gender FROM Employee_Demographics;