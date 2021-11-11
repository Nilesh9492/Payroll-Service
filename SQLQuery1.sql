--UC1--
create database paroll_service;

--UC2--
create table employee_payroll
(
EmpID int identity(1,1) primary key,
name varchar(20) not null,
salary float,
startDate date,
emailID varchar(20)
);

--UC3--
Insert into employee_payroll(name,salary,startDate,emailId) values ('NILESH',55555,'2021-11-07','nil@gmail.com'),('nil',44440,'2021-07-05','hgf@gmail.com');
Insert into employee_payroll values ('niles',90000,'2019-05-16','dfghf@gmail.com'),('amam',2545440,'2020-10-20','fggf@gmail.com');

--UC4--
select * from employee_payroll;

--UC5--
select name,salary from employee_payroll where name='NILESH';
select name,salary from employee_payroll where startDate between ('2021-01-01') and getdate();

--UC6--
alter table employee_payroll add Gender char(1);
update employee_payroll set Gender='M' where name='NILESH' or name='nil' or name='niles';
update employee_payroll set Gender='F' where name='amam';

--UC7--
select sum(salary) as TotalSalary from employee_payroll;

select sum(salary)as TotalSalary ,gender  from employee_payroll where Gender='M' group by Gender;

select sum(salary)as TotalSalary,gender from employee_payroll group by Gender;

select avg(salary)as avgSalary,gender  from employee_payroll group by Gender;

select min(salary) as minSalary ,gender from employee_payroll   group by gender;

select count(salary) as CountofGender ,gender from employee_payroll   group by gender;

select max(salary) as maxSalary ,gender from employee_payroll   group by gender;

--UC8--
alter table employee_payroll add PhoneNumber bigint;

alter table employee_payroll add Address varchar(max) default 'Not Available';

update employee_payroll set PhoneNumber=9632587410 where name='Nilesh';
update employee_payroll set PhoneNumber=9123654789 where name='niles';
update employee_payroll set PhoneNumber=9874563210 where name='nil';
update employee_payroll set PhoneNumber=9456321789 where name='amam';

update employee_payroll set Address='Dhule' where name='Nilesh';
update employee_payroll set Address='Nashik' where name='niles';
update employee_payroll set Address='Pune' where name='nil';
update employee_payroll set Address='Mumbai' where name='amam';


