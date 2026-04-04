--  use startersql;
-- create TABLE emp(emp_id int auto_increment primary key,name varchar(50)not null,
-- salary int not null,dept varchar(50) not null, bonus int);
-- insert into emp(name,salary,dept,bonus)value('John',5000,'IT',500),('Alice',6000,'HR',NULL),
-- ('Bob',4500,'IT',400),('Emma',7000,'HR',600),('Raj',5500,'Finance',Null);

-- Display employees whose Salary > 5000 AND Dept = 'HR'
-- Select * from emp where salary >5000 AND Dept='HR';

-- Find employees who are in IT department AND Bonus is not NULL
-- select * from emp where dept='IT' and bonus IS not null;

-- Select employees whose Salary ≥ 4500 AND Salary ≤ 6000
-- select * from emp where salary >=4500 AND salary <=6000;

-- Display employees who are in HR OR Salary > 6500
-- select * from emp where dept='HR' OR salary >6500;

-- Find employees whose Dept is IT OR Bonus is NULL
-- select * from emp where dept='IT' OR Bonus IS null;

-- Select employees with Salary < 5000 OR Salary > 6500
-- select * from emp where salary<5000 OR salary>6500;

-- Display employees who are NOT in IT department
-- select * from emp where dept not IN('IT');

-- Find employees whose Bonus is NOT NULL
-- select * from emp where Bonus Is not null;

-- Select employees whose Dept is NOT HR
-- select * from emp where dept not IN('HR');

-- Find employees who are in IT OR HR AND Salary > 5000
-- Select * from emp where (dept in('IT'OR 'HR'))AND salary>5000;

-- Display employees whose Salary > 5000 AND (dept = 'HR' OR dept = 'Finance')
-- select * from emp where Salary > 5000 AND (dept = 'HR' OR dept = 'Finance');

-- Select employees whose Dept NOT IN ('IT', 'HR')
-- select * from emp where dept NOT IN ('IT', 'HR');

-- Find employees whose Salary NOT BETWEEN 5000 AND 7000
-- select * from emp where salary NOT BETWEEN 5000 AND 7000;

-- Display employees whose Name NOT LIKE 'A%'
--  Select * from emp where name not LIKE 'A%';

select name from emp where exists(select * from employees);
--  Select * from emp;