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