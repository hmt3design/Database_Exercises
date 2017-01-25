SELECT * FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
SELECT * FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
SELECT * FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
SELECT * FROM employees.employees WHERE last_name LIKE '%e%' ORDER BY emp_no;
SELECT * FROM employees.employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e' ORDER BY emp_no DESC;
SELECT * FROM employees.employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25' ORDER BY birth_date ASC, hire_date DESC;