-- Question 4

-- Return the highest-paid employee from the Employees table.

--select * from Employees;
select first_name, last_name, salary
from Employees
order by salary desc
limit 1;