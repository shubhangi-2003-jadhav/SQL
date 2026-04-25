show databases;
create database joins;
use joins;
show tables;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(20),
    dept_id INT,
    salary INT
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(20)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);


INSERT INTO Department VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Sales');


INSERT INTO Employee VALUES
(1, 'Amit', 101, 50000),
(2, 'Neha', 102, 60000),
(3, 'Raj', 103, 55000),
(4, 'Simran', NULL, 40000),
(5, 'Karan', 102, 70000),
(6, 'Pooja', 105, 45000);


select e.name,d.dept_name from employee e inner join Department d on e.dept_id=d.dept_id;

select e.name,d.dept_name from employee e inner join department d on e.dept_id =d.dept_id AND d.dept_name="IT";

select e.name,d.dept_name,e.salary from employee e inner join department d on e.dept_id=d.dept_id where e.salary>50000;

select d.dept_name, count(e.emp_id)  from employee e inner join department d on e.dept_id=d.dept_id group by dept_name;

select e.name,d.dept_name from employee e inner join department d on e.dept_id =d.dept_id;

select * from orders;

INSERT INTO Orders VALUES
(101, 1, 1000),
(102, 2, 2000),
(103, 1, 1500),
(104, 3, 3000);

INSERT INTO Customers VALUES
(1, 'Ravi'),
(2, 'Priya'),
(3, 'Ankit'),
(4, 'Meena');

select c.customer_name from customers c inner join Orders o on c.customer_id=o.customer_id;

select c.customer_name, sum(o.amount) as totalAmount from customers c inner join Orders o on c.customer_id=o.customer_id group by c.customer_name;

select d.dept_name ,count(e.dept_id) as countDept from customers c inner join Orders o on c.customer_id=o.customer-id where countDept>=1; 


#LEFT JOIN
Select * from Employee;
select * from department;
select  d.dept_name ,count(e.emp_id)  from department d left join employee e on e.dept_id=d.dept_id group by dept_name;

select e.name ,d.dept_name   from employee e left join department d on e.dept_id =d.dept_id AND d.dept_name="it";

#CROSS JOIN

select e.name ,d.dept_name ,e.salary from employee e cross join department d ;

select * from employee ,department;

select  * from employee  e cross join department d where e.dept_id=d.dept_id;


#Self join

CREATE TABLE emp (
    emp_id INT,
    name VARCHAR(50),
    manager_id INT,
    dept VARCHAR(50),
    salary INT
);



INSERT INTO emp VALUES
(1, 'Amit', NULL, 'HR', 100000),
(2, 'Neha', 1, 'HR', 60000),
(3, 'Raj', 1, 'IT', 120000),
(4, 'Simran', 2, 'IT', 70000),
(5, 'Karan', 2, 'HR', 60000),
(6, 'Pooja', 3, 'IT', 90000),
(7, 'Rohit', 3, 'IT', 120000),
(8, 'Sneha', 4, 'Finance', 50000),
(9, 'Arjun', 4, 'Finance', 55000),
(10, 'Meena', 5, 'HR', 60000);

select * from emp;
select e.name as employee, e1.name as manager from emp e join emp e1 on e.manager_id=e1.emp_id;

#find employees earning more than manager
select  e1.name as manager,e.name as employee,e.salary as emp_salary,e1.salary as manager_salary  from emp e join emp e1 on e.manager_id=e1.emp_id where e.salary>e1.salary;

#find employees who have the same manager
select e.name as employee from emp e join emp e1 on e.manager_id=e1.emp_id and e1.emp_id<e.emp_id;

#find employees who have the same manager
SELECT e.name AS employee 
FROM emp e 
JOIN emp e1 
ON e.manager_id = e1.manager_id 
AND e.emp_id < e1.emp_id;

#find employees who have the same salary
select e1.name ,e2.name,e1.salary from emp e1 join emp e2 on e1.salary=e2.salary and e1.emp_id<e2.emp_id;


## Natural Join
select * from employee natural join department;

select * from department;
alter table department change dept_name name varchar(255);

