-- chek import from all tables. 
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles
SELECT * FROM employees

-- 
--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT a.emp_no, a.last_name, a.first_name, a.gender, b.salary
FROM employees AS a
LEFT JOIN salaries AS b
ON a.emp_no=b.emp_no;

--2. List employees who were hired in 1986.
SELECT * 
FROM employees 
WHERE hire_date LIKE '1987%';

SELECT * FROM employees WHERE VAR(hire_date)='1987%';
select id, name, pet_name FROM people WHERE pet_name='Rockington';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT x.dept_no, x.dept_name, a.emp_no, a.last_name, a.first_name, c.from_date, c.to_date
FROM dept_manager AS c
LEFT JOIN employees AS a
ON c.emp_no=a.emp_no
LEFT JOIN departments AS x
ON c.dept_no=x.dept_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT x.dept_no, x.dept_name, a.emp_no, a.last_name, a.first_name, c.from_date, c.to_date
FROM dept_manager AS c
LEFT JOIN employees AS a
ON c.emp_no=a.emp_no
LEFT JOIN departments AS x
ON c.dept_no=x.dept_no;



--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * 
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, a.gender, b.de
FROM employees AS a
LEFT JOIN salaries AS b
ON a.emp_no=b.emp_no;


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.




