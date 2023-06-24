/*Tables*/
create table manager4b
(
ename Varchar2(7),
mname Varchar(18),
city Varchar2(18)
);
insert into manager4b (ename,mname,city) values('Anil','Ajay','Nagpur')
insert into manager4b (ename,mname,city) values('Shankar','Vijay','Chennai')
insert into manager4b (ename,mname,city) values('Jaya','Kiran','Calcutta')
insert into manager4b (ename,mname,city) values('Sunil','Jaya','Bombay')
insert into manager4b (ename,mname,city) values('Vijay','Rakesh','Calcutta')
insert into manager4b (ename,mname,city) values('Prakash','Shankar','Nagpur')
insert into manager4b (ename,mname,city) values('Ajay','Sanjay','Coimbatore')

create table employee__1041
(
  ename varchar2(20),
city varchar2(20)
);
insert into employee__1041 values('Anil','Nagpur');
insert into employee__1041 values('Shankar','Bombay');
insert into employee__1041 values('Jaya','Chennai');
insert into employee__1041 values('Sunil','Bombay');
insert into employee__1041 values('Vijay','Delhi');
insert into employee__1041 values('Prakash','Calcutta');
insert into employee__1041 values('Ajay','Nagpur');
insert into employee__1041 values('Suresh',NULL);

create table emp_company
(
ename varchar2(20),
cname varchar2(15),
salary number(10),
jdate date
);
desc emp_company;
select * from emp_company;

insert into emp_company values('Anil','Acc',1500,'1-MAY-89');
insert into emp_company values('Shankar','Tata',2000,'10-JUL-90');
insert into emp_company values('Jaya','CMC',1800,'7-JUN-91');
insert into emp_company values('Sunil','CMC',1700,'1-JAN-88');
insert into emp_company values('Vijay','TATA',5000,'3-JAN-88');
insert into emp_company values('Prakash','TATA',3000,'27-MAY-89');
insert into emp_company values('Ajay','CMC',8000,'30-APR-95');
insert into emp_company values('Amol','Acc',1000,'17-MAR-95');
insert into emp_company values('Kiran','Hyundai Mobis',30000,'18-DEC-98');
insert into emp_company values('Suresh','Acc','8000','12-jul-85');

/*employees using natural join.*/
/*queries*/
select
ename,
city,
cname,
salary,
jdate
from employee__1041 natural join emp_company ;

/*employees using cross(Cartesian) join.*/

select
a.ename,
b.city,
a.cname,
a.salary,
a.jdate
from emp_company a cross join employee__1041 b;
count(*) from emp_company cross join employee__1041;

select
a.mname,
b.ename
from manager4b a cross join employee__1041 b order by 2 ;

select
a.ename,
b.mname,
a.salary
from emp_company a , manager4b b
where a.ename=b.ename and a.salary>3000 order by salary;

select
a.ename,
b.mname,
a.salary
from emp_company a inner join manager4b b
on a.ename=b.ename and a.salary>3000 order by salary;

select
a.ename,
a.city
from employee__1041 a,emp_company b,company__1041 c
where a.ename = b.ename and b.cname=c.cname and a.city=c.city ;

select
a.ename,
a.salary,
b.city
from emp_company a inner join employee__1041 b
on a.ename=b.ename and b.city='Chennai' and a.salary between 1500 and 10000;

select
a.ename,
a.cname,
a.salary,
b.city
from emp_company a inner join employee__1041 b
on a.ename=b.ename and b.city is null;

select
a.ename,
a.mname,
b.shift
from manager4b a left join emp_shift b
on a.ename=b.ename;

select
b.city as companycity
from a right join employee__1041 b
on a.city=b.city where a.city is null;

select
a.ename,
a.mname,
b.shift
from manager4b a full join emp_shift b
on a.ename=b.ename order by 1;

select
ename as employee,
mname as manager,
shift
from manager4b natural join emp_shift ;

select
a.ename as employee,
b.mname as manager,
a.city
from employee__1041 a inner join manager4b b
on a.city=b.city and a.ename=b.ename;

select
a.ename as employee,
b.mname as manager
from employee__1041 a left join manager4b b
on a.ename= b.ename order by employee;

select
a.cname as customers,
b.mname as managers
from customer_urk20ai1041 a left join manager4b b
on a.cname= b.ename order by 1 ;

select
b.cname,
a.amount,
b.city
from deposit_urk20ai1041 a,customer_urk20ai1041 b,employee__1041 c
where a.cname= b.cname and c.city in(select city from employee__1041 where
c.ename='Anil' or c.ename='Sunil') and a.cname=c.ename ;

select
c.ename,
a.amount,
b.city
from deposit_urk20ai1041 a ,branch_urk20ai1041 b ,employee__1041 c
where a.bname=b.bname and c.city in(select city from employee__1041 where
c.ename='Anil' or c.ename='Sunil') and a.cname=c.ename ;

select
a.cname,
a.amount,
b.city
from deposit_urk20ai1041 a ,customer_urk20ai1041 b
where a.cname=b.cname and b.city in(select city from customer_urk20ai1041 where
b.cname='Anil' or b.cname='Sunil') ;

select
c.ename,
a.amount,
b.city
from deposit_urk20ai1041 a ,branch_urk20ai1041 b ,employee__1041 c
where a.bname=b.bname and b.city=c.city and a.cname=c.ename ;



