-- Create tables.
CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR(40) NOT NULL
);

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL
);

CREATE TABLE departments(
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(40) NOT NULL
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;