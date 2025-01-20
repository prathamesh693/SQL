-- Sub-Query
-- Window Function

-- Using sub-query retrive the avg,min,max and count of and age
SELECT * FROM (
SELECT gender,avg(age),min(age),max(age),count(age)
FROM sql_basic.employee_demographics
GROUP BY gender) AS Agg_table
-- Group by gender 
;

-- Use the output of one function to the others and perform operations on it.
SELECT gender, AVG('max(age)') FROM (
-- If we can't use inverted commas then it consider it as a function and 
-- gives an error to the query.
SELECT gender,avg(age),min(age),max(age),count(age)
FROM sql_basic.employee_demographics
GROUP BY gender) AS Agg_table
GROUP BY gender
;

--