show databases;

use emp_info;
select * from employee;

set Autocommit=0;
insert into employee values(7,'kajal',77000);
rollback;
grant select on employee To Admin;

grant update on employee To Admin;
