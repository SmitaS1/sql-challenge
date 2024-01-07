CREATE TABLE title (
    title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR (20)
);

CREATE TABLE employees (
    emp_no	   INT NOT NULL PRIMARY KEY ,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    sex VARCHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES title (title_id)
);

CREATE TABLE departments (
    dept_no	 VARCHAR(5) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE dept_mgr (
        dept_no	 VARCHAR(5),
        emp_no	   INT,
        FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
        FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
        PRIMARY KEY (dept_no,emp_no)
);

CREATE TABLE dept_emp (
        emp_no	   INT,
        dept_no	 VARCHAR(5),
        FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
        FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
        PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

