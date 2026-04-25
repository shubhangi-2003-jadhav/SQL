 -- use startersql;
-- create table emp_2023(id int auto_increment primary key,name varchar(50) not null,department varchar(50) not null,salary int not null);
 -- create table emp_2024(id int auto_increment primary key,name varchar(50) not null,department varchar(50) not null,salary int not null);
 -- insert into  emp_2023 (name,department,salary) values('Aakanksha','Finance',25000),('Karan','HR',30000),('Nilam','IT',28000),('Vishal','HR',55000),('Snehal','IT',48000),('Aakanksha','Finance',25000);
 -- select * from emp_2023;
   -- insert into  emp_2024 (name,department,salary) values('sanika','Finance',25000),('Sakshi','HR',30000),('Sheetal','IT',28000),('Vishal','HR',55000),('Snehal','Finance',48000),('Aakanksha','Finance',25000);
   --  select * from emp_2024;
   
-- select name,department,salary from emp_2023 union select name,department,salary from emp_2024;

  #Union  with order By name
 --   Select name from emp_2023 union select name from emp_2024 Order BY name;
 
   #Union with Order By descending
-- Select name,salary from emp_2023 union select name,salary from emp_2024 Order BY salary desc;

#All names of Emp_2023 table and all emp_2024 of Departmaent column are mixed
-- select name AS Emp_name from emp_2023 union select department from emp_2024;


#UNION ALL
-- select name, department  from emp_2023 union all select name ,department from emp_2024 ;

#UNion with Where Clause
-- select name, department  from emp_2023 where department="IT" union all select name ,department from emp_2024 where department="IT" ;


