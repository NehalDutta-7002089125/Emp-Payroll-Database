Create database EMPLOYEE_PAYROL

create Table EmployeeTable
(
id int identity primary key,
name varchar(200) not null,
salary money not null,
start_Date date not null
)

Insert into EmployeeTable values
('Rutuja',40000,'2023-02-15'),
('Vikram',50000,'2019-05-23'),
('Rohit',60000,'2020-02-12'),
('Sneha',70000,'2021-03-14')


select * from EmployeeTable

select salary from EmployeeTable where name='Sneha'