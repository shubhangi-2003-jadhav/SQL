show databases;
create database clauses;
use clauses;
show tables;

create table emp(id int primary key,name varchar(250),dept varchar(100),salary double not null,experience int);

alter table emp add column job_role varchar(250) not null;
insert into emp values
(1, 'Amit', 'IT', 'Developer', 40000,3),
(2, 'Neha', 'HR', 'Manager', 30000,2),
(3, 'Rahul', 'IT', 'Tester', 25000,4),
(4, 'Sneha', 'Finance', 'Analyst', 35000,1),
(5, 'Pooja', 'HR', 'Executive', 28000,2),
(6, 'Karan', 'IT', 'Developer', 45000,3),
(7, 'Rohit', 'Finance', 'Manager', 50000,4),
(8, 'Anjali', 'IT', 'Tester', 27000,1),
(9, 'Vikas', 'HR', 'Manager', 32000,2),
(10, 'Priya', 'Finance', 'Analyst', 30000,1),
(11,'gauri','IT','developer',45000,2),
(12,'shivani','IT','Test',35000,1),
(13,'Gauri','HR','executive',60000,4);

alter table emp modify column job_role varchar(250) after dept;
desc emp;
select * from emp;


#Count Employee
select dept, count(*) as total_employees from emp group by dept;

#Find Total salary of each department
select dept ,sum(coalesce(salary,0)) as total_salary from emp group by dept;

#Find Average Salary in each department
select dept ,avg(salary) AS avg_salary from emp  group by dept;

#Max salary
select dept , max(salary) As max_salary from emp group by dept;

select dept ,sum(salary) as total_salary from emp where salary>30000 group by dept;

#Highest Total Salary
select dept, sum(salary) As Highest_totalSalary from emp group by dept order by highest_totalSalary desc ;
 
 #Second Highest salary
 select dept, sum(salary) as second_Highest from emp group by dept order by second_highest desc limit 1 OFFSET 1;
 
 #lowest Total Salary
 select dept ,sum(salary)  as lowest_salary from emp group by dept order by lowest_salary limit 1;
 
 #multiple rows
 select dept ,job_role ,sum(salary) as total_salary from emp group by dept,job_role;
select profile  from employee group by profile;

select profile,sum(salary) from employee group by profile;

select profile  from employee group by profile;



#HAVING CLAUSES
SELECT dept, SUM(salary)
FROM emp
GROUP BY dept
HAVING SUM(salary) > 50000;


SELECT dept, SUM(salary)
FROM emp
WHERE salary > 20000
GROUP BY dept
HAVING SUM(salary) > 50000;


select dept from emp group by dept having count(*) >2;

select dept from emp group by dept  having max(salary) >30000;

select dept from emp group by dept having max(salary)>50000;
select dept from emp group by dept having max(salary)-min(salary)>20000;


#ORDER BY CLAUSE

Select name,salary from emp order by 2;

select dept,salary from emp order by dept,salary ;


#LIMIT CLAUSE
select * from emp limit 5;


#Aggregate Functions

select count(*),max(salary),min(salary),sum(salary),Avg(salary) from emp;

SELECT salary, COUNT(*)
FROM emp
GROUP BY salary
HAVING COUNT(*) > 1;





