Create database EMPLOYEE_PAYROL

create Table EmployeeTable
(
id int identity primary key,
name varchar(200) not null,
salary money not null,
start_Date date not null
)