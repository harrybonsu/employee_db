With salaries as (
  select
    emp_no as employee_number,
    salary
    
  from {{ source('public', 'salaries')}}
)

select * from salaries