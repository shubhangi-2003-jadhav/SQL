show databases;
use emp;

show tables;

create table emp (id int primary key,name varchar(250));
insert into emp values(1,'nilam'),(2,'rutuja'),(3,'darshu');
select * from emp;

create table department (dept_id int primary key,dept_name varchar(250));
insert into department values(1,'HR'),(2,'IT'),(3,'Finance');
select * from department;

select 