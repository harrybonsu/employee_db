with departments as (

    select
        dept_no as department_number,
        dept_name as department_name

    from employee_db.public.departments
)

select * from departments