USE employees;

# look on the first table for foreign keys (FK) that reference other tables
# if no FK, search for a table that does have the dept_no as FK
# now go back and search for a FK

# write a query that shows each department along with the name of the current manager for that department
SELECT
  dept_name,
  CONCAT(employees.first_name, ' ', employees.last_name) AS full_name
FROM departments
  JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
  JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > curdate()
ORDER BY departments.dept_name;

# find the name of departments currently managed by women
SELECT
  dept_name,
  CONCAT(employees.first_name, ' ', employees.last_name) AS full_name
FROM departments
  JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
  JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > curdate() AND employees.gender = 'F'
ORDER BY departments.dept_name;

#find thte current titles of employees currently working in the Customer Service department
SELECT
  titles.title,
  count(employees.first_name) AS "number of employees"
FROM employees
  JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
  JOIN titles ON employees.emp_no = titles.emp_no
  JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = "Customer Service"
      AND dept_emp.to_date > curdate()
      AND titles.to_date > curdate()
GROUP BY titles.title;

# find the current salary of all current managers
SELECT
  dept_name,
  CONCAT(employees.first_name, ' ', employees.last_name) AS full_name,
  salaries.emp_no AS "Salaries"
FROM departments
  JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
  JOIN employees ON dept_manager.emp_no = employees.emp_no
  JOIN salaries ON dept_manager.emp_no = salaries.emp_no
WHERE dept_manager.to_date > curdate()
  AND salaries.to_date > curdate()
ORDER BY departments.dept_name;

#Find the names of all current employees, their department name, and their current manager's name

SELECT concat(e.first_name, " ", e.last_name) AS "Employee", departments.dept_name, concat(managers.first_name, " ", managers.last_name)
FROM employees AS e
JOIN dept_emp ON e.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
  JOIN employees AS managers ON dept_manager.emp_no = managers.emp_no
WHERE dept_emp.to_date > curdate()
AND dept_manager.to_date > curdate()

