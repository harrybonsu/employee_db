with employees as (

  select 
    emp_no as employee_number,
    first_name,
    last_name

  from employee_db.public.employees

)

select * from employees