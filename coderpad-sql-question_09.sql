-- Question 9

-- Return a list of all employees along with their department name.
-- Include employees who do not belong to any department.

-- Tables involved:

-- - Employees
-- - Departments

--select * from Employees;
--select * from Departments;
select id, first_name, last_name, department_name
from Employees
left join Departments on Employees.department_id = Departments.department_id;