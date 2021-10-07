with dept_emp as (

  select
    emp_no as employee_number,
    dept_no as department_number

  from employee_db.public.dept_emp
)

select * from dept_emp