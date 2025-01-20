-- Substring with 
-- Functions like count, min, max,avg
-- Pattern Maching

-- Retrive the name and salary with Subqueiry
SELECT First_Name,salary,
(SELECT AVG(salary) 
FROM sql_basic.Employee_Salary)
FROM sql_basic.Employee_Salary;

-- Calculate MIN,MAX,AGE,COUNT
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM sql_basic.Employee_Demographics
GROUP BY gender;

-- Retrive the names of an employee who name starting with 'A'
SELECT * 
FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE 'A%';
-- Matches names like 'Andy', 'Ann'

-- Retrive the name of employee who's name ending with 'e'
SELECT * 
FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE '%e';
-- Matches names like 'Leslie', 'Creig', 'Jerry'

-- Access an employee name containing 'o' on his/her name.
SELECT * 
FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE '%o%';
-- Matches names like 'Donsha'

-- Name of an employee have exactly four characters.
SELECT * 
FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE '____';
-- Matches names like 'Andy', 'Mark'

-- Retrive naem with 'a' as second letter
SELECT * FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE '_a%';
-- Matches names like 'Mark'

-- Retrive names with 'r' as the third letter.
SELECT * FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE '__r%';
-- Matches names like 'Jerry', 'Creig'

-- Retrive the names starting with 'C' and ending with 'g'
SELECT * FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE 'C%g';
-- Matches names like 'Creig'

-- Retrive names ending with vowel
SELECT * 
FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE '%a' 
   OR First_Name LIKE '%e' 
   OR First_Name LIKE '%i' 
   OR First_Name LIKE '%o' 
   OR First_Name LIKE '%u';
-- Matches names like 'Leslie', 'Donsha'

-- Access names starting with any letter from 'A' to 'M'
SELECT * 
FROM sql_basic.Employee_Demographics
WHERE First_Name LIKE '[A-M]%';
-- Matches names like 'Andy', 'April', 'Jerry' (dialect-dependent)
