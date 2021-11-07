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