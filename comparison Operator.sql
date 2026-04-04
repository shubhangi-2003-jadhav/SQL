-- use startersql;
-- create TABLE employees(emp_id int auto_increment primary key,
-- name varchar(50)not null default true,
-- age int not null,salary int not null,department  varchar(50) not null,city varchar(50)not null);

-- insert into  employees(name,age,salary,department,city)values('Amit',25,30000,'IT' ,'Pune'),
-- ('Neha',30,45000,'HR','Mumbai'),('Rahul',28,40000,'IT','pune'),
-- ('pooja',35,55000,'finance','Delhi'),('Anil',22,20000,'HR','Nagpur');

-- display All employees Whose department ='IT';
-- Select * from employees where department='IT';

-- Find employees whose city = Pune
-- select * from employees where city='pune';

-- Show details of employee whose emp_id = 3
-- select * from employees where emp_id=3;

-- Display employees whose department != HR
-- select * from employees where department <>'HR';
-- select * from employees where department !='HR';

-- Find employees whose city <> Mumbai
-- select * from employees where city <> 'mumbai';

-- Show employees whose salary != 30000
-- select * from employees where salary !=30000;

-- Display employees with salary > 40000
-- select * from employees where salary >40000;

-- Find employees whose age > 30
-- select * from employees where age>30;

-- Show employees earning more than 25000
-- select * from employees where salary>25000;

-- Display employees with salary < 30000
-- select * from employees where salary <30000;

-- Find employees whose age < 25
-- select * from employees where age<25;

-- Show employees whose emp_id < 4
-- select * from employees where emp_id<4;

-- Display employees with salary >= 40000
-- select * from employees where salary >=40000;

-- Find employees whose age >= 28
-- select  * from employees where age >=28;

-- Show employees whose emp_id >= 2
-- select * from employees where emp_id >=2;

-- Display employees with salary <= 30000
-- select * from employees where salary <=30000;

-- Find employees whose age <= 25
-- select * from employees where age <=25;

-- Show employees whose emp_id <= 3
-- select * from employees where emp_id <=3;

-- Display employees whose age > 25 AND salary >= 40000
-- select * from employees where age >25 AND salary >=40000;

-- Find employees whose salary < 50000 AND department = IT
-- select * from employees where salary <50000 AND department ='it';

-- Show employees whose age >= 30 AND city != Pune
-- select * from employees where age >=30 AND city <>'pune';

-- Write a query to find employees whose salary is not equal to 45000
-- select * from employees where salary !=45000;

-- Find employees whose age is greater than 22 but less than 35
-- select * from employees where age > 22 And age < 35;

-- Display employees whose salary is greater than or equal to 30000
-- select * from employees where salary >=30000;

-- select * from Employees ;
-- select * from employees;