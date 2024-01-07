--Data Analysis
---List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no,e.last_name,e.first_name, e.sex,s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no;

---List the first name, last name, and hire date for the employees who were hired in 1986.
select e.first_name,e.last_name,e.hire_date
from employees e
where to_char(hire_date,'yyyy')= '1986';

---List the manager of each department along with their department number, department name, employee number, last name, and first name.
select t.title,dm.dept_no, d.dept_name,dm.emp_no,e.last_name,e.first_name
from departments d
join dept_mgr dm
on dm.dept_no = d.dept_no
join employees e
on  dm.emp_no =e.emp_no 
join title t
on t.title_id = e.emp_title_id
where t.title ='Manager';


---List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select de.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name
from dept_emp de
join employees e 
on de.emp_no = e.emp_no
join departments d
on d.dept_no = de.dept_no; 


---List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select e.first_name,e. last_name, e.sex
from employees e
where e.first_name = 'Hercules'
and e.last_name like 'B%';

---List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no,e.last_name,e.first_name,de.dept_no,d.dept_name
from employees e
join dept_emp de
on de.emp_no = e.emp_no
join departments d
on d.dept_no = de.dept_no
where d.dept_name ='Sales';

---List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,de.dept_no,d.dept_name
from employees e
join dept_emp de
on de.emp_no = e.emp_no
join departments d
on d.dept_no = de.dept_no
where d.dept_name ='Sales'
or d.dept_name = 'Development';

---List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select count(last_name),last_name 
from employees
group by last_name
order by last_name desc;




