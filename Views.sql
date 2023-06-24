create or replace view emp_data
as
select
a.ename,
b.cname,
b.salary,
b.jdate,
a.city as livingcity,
c.city
FROM employee__1041a,emp_company b,company__1041c
where a.ename = b.ename and b.cname = c.cname ;

Query:
select view_name,text from user_views

Query:
update emp_data1
set jdate='10-dec-99' where ename='Anil';
select * from emp_company;

Query:
CREATE or REPLACE VIEW v1 AS SELECT ename,salary,cname FROM
emp_company WHERE cname = 'Acc'

Query:
insert into emp_company(ename,cname,salary,jdate) values('Ashok','Acc',1200,'')

Query:
select * from v1

Query:
CREATE OR REPLACE VIEW v2 AS SELECT ename,salary,cname FROM
emp_company WHERE cname = 'Acc' WITH CHECK OPTION

Query:
CREATE or REPLACE VIEW stats AS SELECT cname,avg(salary) Average,max(salary)
Maximum,min(salary) Minimum FROM emp_company GROUP BY cname

Query:
CREATE OR REPLACE VIEW ninth AS SELECT
CONCAT(ename,cname)emp_comp_name,salary FROM emp_company WHERE jdate > '1-
feb-98'

Query:
CREATE OR REPLACE VIEW ten AS SELECT a.ename,a.salary,b.city from
emp_company a, employee__1041 b WHERE a.ename = b.ename

Query:
SELECT rownum Top,ename,salary FROM(select ename,salary from emp_company order
by salary desc) where rownum <= 5

Query:
select rownum Top_Five,ename,jdate from(select ename,jdate from emp_company where
jdate is not null order by jdate desc) where rownum <= 5

Query:
CREATE SEQUENCE s1 start with 1 increment by 1 maxvalue 100 cycle

Query:
CREATE OR REPLACE VIEW v3 AS SELECT empid,ename,city from employee
Query:
CREATE INDEX i1 ON employee(empid)

