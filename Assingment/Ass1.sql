/* 
We have an employee salary data and GIves them bonus 
According to their salary.
1. less than 50000 = 5%
2. greater than 50000 = 7%
3. An Exceptional employee finance 10% bonus
*/


select first_name,last_name,salary,
CASE
    wHEN salary<50000 THEN salary+(salary*0.05)
    WHEN salary>50000 THEN salary+(salary*0.07)
END AS new_salary,
CASE   
    WHEN dept_id = 105 THEN salary* .10
END AS Bonus
FROM employee_salary;