-- create database Emp_Info;
-- show databases;
-- use Emp_Info;
-- create table employee(id int primary key auto_increment,name varchar(250)not null,salary double );
-- Show tables;
-- desc employee;
-- insert into employee value(1, "Asha",35000),(2,"Aniket",40000),(3,"sanjana",50000);
-- select * from employee;
-- Create table emp(id int auto_increment primary key,salary double not null);
-- insert into emp values(101, 30000),(102 ,50000);
-- Select * from emp;

#ANY OPERATORS
 select salary from emp where salary >any (select salary from employee );
 
 #ALL OPERATORS
  select salary from emp where salary >all (select salary from employee );