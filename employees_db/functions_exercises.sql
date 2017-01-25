SELECT count(first_name), gender AS "By gender" FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;

SELECT concat(first_name, " ", last_name) AS "Full name" FROM employees.employees WHERE last_name LIKE '%e%';

SELECT first_name, last_name, datediff(curdate(), hire_date) AS "Number of days employed" FROM employees.employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';

SELECT concat(first_name, " ", last_name) AS "full_name", count(first_name) AS "number of people with this name" FROM employees.employees WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%' GROUP BY full_name ORDER BY 'number of people with this name' DESC;