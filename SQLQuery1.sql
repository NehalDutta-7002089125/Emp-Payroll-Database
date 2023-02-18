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

alter table EmployeeTable add Gender char (1)

update EmployeeTable set Gender ='F' where name = 'Rutuja'

update  EmployeeTable set Gender ='M' where ID in(2,3) ;
update  EmployeeTable set Gender ='F' where ID in(4) ;

select Sum(Salary) as Total_Salary_Of_Male from EmployeeTable where Gender = 'M' GROUP BY Gender
select Sum(Salary) as Total_Salary_Of_female from EmployeeTable where Gender = 'F' GROUP BY Gender
select Sum(Salary) as Total_Salary_Of_Employees from EmployeeTable


select Avg(Salary) as Average_Salary_Of_Male from EmployeeTable where Gender = 'M' GROUP BY Gender
select Avg(Salary) as Average_Salary_Of_Female from EmployeeTable where Gender = 'F' GROUP BY Gender
select Avg(Salary) as Average_Salary_Of_Employees from EmployeeTable


select Min(Salary) as Minimum_Salary_Of_Male from EmployeeTable where Gender = 'M' GROUP BY Gender
select Min(Salary) as Minimum_Salary_Of_Female from EmployeeTable where Gender = 'F' GROUP BY Gender
select Min(Salary) as Minimum_Salary_Of_Employee from EmployeeTable


select Max(Salary) as Maximum_Salary_Of_Male from EmployeeTable where Gender = 'M' GROUP BY Gender
select Max(Salary) as Maximum_Salary_Of_Female from EmployeeTable where Gender = 'F' GROUP BY Gender
select Max(Salary) as Maximum_Salary_Of_Employee from EmployeeTable


select Count(Id) as Number_Of_Male_Employees from EmployeeTable where Gender = 'M' GROUP BY Gender
select Count(Id) as Number_Of_Female_Employees from EmployeeTable where Gender = 'F' GROUP BY Gender
select Count(Id) as Total_Employees from EmployeeTable

alter table EmployeeTable add
PhoneNumber varchar(15), 
Address varchar(200) not null default 'India',
Department varchar(200)  
update EmployeeTable set PhoneNumber = '1234567891', Address = 'Satara', Department = 'IT' WHERE Name = 'Rutuja'
update EmployeeTable set PhoneNumber = '343434562', Address = 'Mumbai', Department = 'Mechanical' WHERE Name = 'Vikram'
update EmployeeTable set PhoneNumber = '345678912', Address = 'Pune', Department = 'Electronics' WHERE Name = 'Rohit'
update EmployeeTable set PhoneNumber = '456789123', Address = 'Kolhaour', Department = 'CS' WHERE Name = 'Sneha'
select * from EmployeeTable

alter table EmployeeTable add
Deduction money,
Taxable_Pay money,
Income_Tax money,
Net_Pay money
select * from EmployeeTable
Update  EmployeeTable  set Deduction=1000 where Gender='F'
Update EmployeeTable  set Deduction=2000 where Gender='M'
Update EmployeeTable  set Net_Pay=500
Update EmployeeTable  set Taxable_Pay=0,Income_Tax=0
select * from EmployeeTable