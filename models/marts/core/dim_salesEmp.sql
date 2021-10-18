with employees as (

  select * from {{ ref('stg_employees')}}
),

dept_emp as (

  select * from {{ ref('stg_dept_emp') }}
),

departments as (
  
  select * from {{ ref('stg_departments') }}
),

salaries as (
  select * from {{ ref('stg_emp_salaries') }}
),

sales_employees as (

  select
    employees.employee_number,
    employees.first_name,
    employees.last_name,
    departments.department_name,
    salary

  from employees

  inner join salaries using (employee_number)

  inner join dept_emp using (employee_number)

  inner join departments using (department_number)

  where department_name = 'Sales'

)

select * from sales_employees
