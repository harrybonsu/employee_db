select
    employee_number,
    salary
from {{ ref('stg_salaries') }}

Having not(salary >= 0)