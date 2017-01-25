SELECT concat(emp_no, " - ", last_name, " ", first_name) AS "Employee number - full name", birth_date AS "DOB"
FROM employees.employees
LIMIT 10;