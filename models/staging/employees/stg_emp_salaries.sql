With employees as (
  select * from {{ ref('stg_employees') }}
), 
salaries as (
  select * from {{ ref('stg_salaries') }}
),
emp_salaries as (
  select
    employees.employee_number,
    salaries.salary

  from employees 
  inner join salaries using (employee_number)
)
select * from emp_salaries