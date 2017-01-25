SELECT emp_no, first_name, last_name FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT emp_no, first_name, last_name FROM employees.employees WHERE last_name LIKE 'E%';
SELECT emp_no, first_name, last_name, hire_date FROM employees.employees WHERE hire_date LIKE '199%';
SELECT emp_no, first_name, last_name, birth_date FROM employees.employees WHERE birth_date LIKE '%12-25';
SELECT emp_no, first_name, last_name FROM employees.employees WHERE last_name LIKE '%q%';