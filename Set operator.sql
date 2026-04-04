-- use startersql;
-- create table emp_2023(id int auto_increment primary key,name varchar(50) not null,department varchar(50) not null,salary int not null);
 -- create table emp_2024(id int auto_increment primary key,name varchar(50) not null,department varchar(50) not null,salary int not null);
 -- insert into  emp_2023 (name,department,salary) values('Aakanksha','Finance',25000),('Karan','HR',30000),('Nilam','IT',28000),('Vishal','HR',55000),('Snehal','IT',48000),('Aakanksha','Finance',25000);
 -- select * from emp_2023;
   -- insert into  emp_2024 (name,department,salary) values('sanika','Finance',25000),('Sakshi','HR',30000),('Sheetal','IT',28000),('Vishal','HR',55000),('Snehal','Finance',48000),('Aakanksha','Finance',25000);
   -- select * from emp_2024;
   
   select name,department,salary from emp_2023 union select name,department,salary from emp_2024;
   
   

