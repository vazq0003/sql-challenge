--1.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s ON s.emp_no = e.emp_no;


--2.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '1/1/1986' AND hire_date <='12/31/1986';

--3.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN employees e ON m.emp_no = e.emp_no;


--4.
SELECT j.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp j
JOIN employees e ON j.emp_no = e.emp_no
JOIN departments d ON j.dept_no = d.dept_no;


--5.
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name Like 'B%';


--6. 
SELECT d.dept_name, e.last_name, e.first_name
FROM dept_emp j
JOIN employees e ON j.emp_no = e.emp_no
JOIN departments d ON j.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


--7.
SELECT j.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp j
JOIN employees e ON j.emp_no = e.emp_no
JOIN departments d ON j.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


--8. 
SELECT last_name,
COUNT(last_name) 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;