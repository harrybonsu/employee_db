with departments as (

    select
        dept_no as department_number,
        dept_name as department_name

    from {{ source ('public', 'departments') }}
)

select * from departments