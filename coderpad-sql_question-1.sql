-- Given a table Employees(id, first_name, last_name, department, salary),
-- write a query to return all employees in the ‘Engineering’ department earning more than 80,000, ordered by salary descending.

select id, first_name, last_name, department_name, salary
from Employees
inner join Departments on Employees.department_id = Departments.department_id
where department_name = 'Engineering' and salary > 80000
order by salary desc;