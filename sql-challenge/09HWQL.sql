--1. 

SELECT
   employees.emp_no,
   birth_date, 
   first_name,
   last_name,
   gender,
   hire_date,
   salaries.salarie
FROM
   employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no;


--2.
SELECT emp_no FROM employees WHERE hire_date LIKE '1986%';


--3.

SELECT
   employees.emp_no,
   birth_date, 
   first_name,
   last_name,
   gender,
   hire_date,
   dept_manager.dept_no
FROM
   employees
INNER JOIN dept_manager ON dept_manager.emp_no = employees.emp_no;


--5.


SELECT first_name FROM employees where first_name = 'Hercules'


SELECT last_name FROM employees WHERE last_name LIKE 'B%';



--8. 
SELECT last_name, COUNT(last_name)AS Frequency

  FROM employees

  GROUP BY last_name

  ORDER BY

  COUNT(last_name) DESC