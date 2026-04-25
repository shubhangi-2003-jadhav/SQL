
show databases;
use emp_info;
show tables ;
select * from employee;

grant select On employee To shubhangi;

grant insert ,update on employee to shubhangi,Admin;

grant insert, update, select  on employee To shubhangi with grant option;

#revoke command
revoke insert on employee from shubhangi;

#revoke with Grant option 
 
 revoke grant option on employee from shubhangi;
start transaction;
set autocommit=0;
select * from emp;

insert into emp values(107,35000);
savepoint sp1;
insert into emp value(108,40000);
savepoint sp2;
insert into emp value(109,37000);
rollback to sp2;






