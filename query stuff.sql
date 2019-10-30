select emp.emp_no,
		emp.last_name,
		emp.first_name,
		emp.gender, 
		sal.salary
from employees as emp
	left join salaries as sal
	on (emp.emp_no = sal.emp_no)
	order by emp.emp_no;
	
select hire_date from employees
where hire_date between '1986-01-01' and '1986-12-31'

select man.dept_no,
	   dep.dept_name,
	   man.emp_no,
	   emp.first_name,
	   emp.last_name,
	   man.from_date,
	   man.to_date
from dept_manager as man
	 right join employees as emp
	 on (emp.emp_no = man.emp_no)
	 left join  departments as dep
	 order by man.emp_no
	 
select dep.capt_name,
	   emp.first_name,
	   emp.last_name,
	   emp.emp_no
	   
FROM employees AS emp
   INNER JOIN dept_emp AS dept
       ON (emp.emp_no = dept.emp_no)
   INNER JOIN departments AS dep
       ON (dept.dept_no = dep.dept_no)
ORDER BY emp.emp_no;

select *
	from employees
	where first_name= 'Hercules'
	and last_name like 'B%';
	
select d.capt_name,
	   emp.first_name,
	   emp.last_name,
	   emp.emp_no

	FROM employees as emp
		inner join dept_emp as de
			on(emp.emp_no=de.emp_no)
		inner join departments as d
			on(de.dept_no=d.dept_no)
	where d.capt_name= 'Sales'
	order by emp.emp_no;
	
	select d.capt_name,
	   emp.first_name,
	   emp.last_name,
	   emp.emp_no

	FROM employees as emp
		inner join dept_emp as de
			on(emp.emp_no=de.emp_no)
		inner join departments as d
			on(de.dept_no=d.dept_no)
	where d.capt_name in ('Sales','Development')
	order by emp.emp_no;
		
 select last_name, count(last_name)
 
 from employees
 
 group by last_name
 order by count(last_name) desc 