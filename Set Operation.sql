create table employee__1041
(
ename varchar2(20),
city varchar2(20)
);
desc employee__1041;
select * from employee__1041;

insert into employee__1041 values('Anil','Nagpur');
insert into employee__1041 values('Shankar','Bombay');
insert into employee__1041 values('Jaya','Chennai');
insert into employee__1041 values('Sunil','Bombay');
insert into employee__1041 values('Vijay','Delhi');
insert into employee__1041 values('Prakash','Calcutta');
insert into employee__1041 values('Ajay','Nagpur');
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

create table company__1041
(
cname varchar2(15),
city varchar2(20)
);

desc company__1041;

insert into company__1041 values('Acc','Chennai');
insert into company__1041 values('TATA','Bombay');
insert into company__1041 values('Acc','Nagpur');
insert into company__1041 values('CMC','Bombay');
insert into company__1041 values('CMC','Chennai');
insert into company__1041 values('TATA','Chennai');

select * from company__1041;

create table manager__1041
(
ename varchar2(20),
mname varchar2(20)
);

insert into manager__1041 values('Anil','Ajay');
insert into manager__1041 values('Shankar','Vijay');
insert into manager__1041 values('Jaya','');
insert into manager__1041 values('Sunil','Jaya');
insert into manager__1041 values('Vijay','');
insert into manager__1041 values('Prakash','Shankar');
insert into manager__1041 values('Ajay','');

select * from manager__1041;

create table emp_shift
(
ename varchar2(20),
shift varchar2(1)
);

insert into emp_shift values('Anil','A');
insert into emp_shift values('Sunil','B');
insert into emp_shift values('Vijay','B');
insert into emp_shift values('Prakash','C');
insert into emp_shift values('Kiran','E');
