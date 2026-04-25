use startersql;
 -- show tables;
-- Select * from employees;

-- select * from emp where bonus IS Null;
 -- select * from emp;
 #NOT LIKE OPERATORS
#select * from emp where name not like 'R__';

#Exists Operators
  -- select name ,department,age from employees e where exists(select name ,salary from emp p where e.emp_id=p.emp_id);

  select name ,department,age from employees e where exists(select 1 from emp p where e.emp_id=p.emp_id);
