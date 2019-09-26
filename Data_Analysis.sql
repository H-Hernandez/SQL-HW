-- 1.List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employee_bio e 
join salary s on e.emp_no = s.emp_no

-- 2.List employees who were hired in 1986.
select e.last_name, e.first_name
from employee_bio e 
where e.hire_date between '1986-01-01' and '1986-12-31'

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
from employee_bio e 
join manager_dept m on e.emp_no = m.emp_no
join company_departments d on d.dept_no = m.dept_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select ed.emp_no, e.last_name, e.first_name, d.dept_name
from employee_bio e 
join employee_dept ed on e.emp_no = ed.emp_no
join company_departments d on ed.dept_no = d.dept_no

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name
from employee_bio e
where e.first_name = 'Hercules'
and e.last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee_bio e 
join employee_dept ed on e.emp_no = ed.emp_no
join company_departments d on ed.dept_no = d.dept_no
where d.dept_no = 'd007'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee_bio e 
join employee_dept ed on e.emp_no = ed.emp_no
join company_departments d on ed.dept_no = d.dept_no
where d.dept_no in ('d007', 'd005')

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select e.last_name, count(e.last_name) as Count_of_last_name
from employee_bio e 
group by e.last_name
order by 2 desc






