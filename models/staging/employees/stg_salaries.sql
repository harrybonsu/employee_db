With salaries as (
  select
    emp_no as employee_number,
    salary
    
  from employee_db.public.salaries
)

select * from salaries