SELECT title FROM employees.titles GROUP BY title;
SELECT DISTINCT title FROM employees.titles;
SELECT title FROM employees.titles GROUP BY title ORDER BY title;
SELECT DISTINCT title FROM employees.titles ORDER BY title;
SELECT last_name FROM employees.employees WHERE last_name LIKE 'e%e' GROUP BY last_name;
SELECT DISTINCT last_name FROM employees.employees WHERE last_name LIKE 'e%e';
SELECT first_name,last_name FROM employees.employees WHERE last_name LIKE 'e%e';
SELECT DISTINCT first_name,last_name FROM employees.employees WHERE last_name LIKE 'e%e';
SELECT DISTINCT first_name, last_name FROM employees.employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
