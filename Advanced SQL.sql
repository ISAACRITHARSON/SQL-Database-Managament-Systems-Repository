/*The Aggregate Functions in SQL perform calculations on a group of values and then return a
single value.
SUM() - Used to return the sum of a group of values.
COUNT() - Returns the number of rows either based on a condition, or
without a condition.
AVG() - Used to calculate the average value of a numeric column.
MAX() - Returns a maximum value of a column.
ROUND() - Rounds off a numeric value to the nearest integer.
UPPER() - This function is used to convert a string column values to Uppercase.
LENGTH() - Returns the length of the text values in the column.*/
create table deposit_urk20ai1041
(
AccNo number(6),
CName varchar2(20),
BName varchar2(20),
Amount number(10),
day date
);

select* from deposit_urk20ai1041;
insert into deposit_urk20ai1041 values(106,'Sandip','Andheri',20000,'31-MAR-16');
insert into deposit_urk20ai1041 values(107,'Shivani','Coimbatore',150000,'5-SEP-15');
insert into deposit_urk20ai1041 values(108,'Kranti','Nagpur place',175000,'2-JUL-15');

insert into deposit_urk20ai1041 values(109,'Naren','Nagpur',76000,'10-AUG-15');
insert into deposit_urk20ai1041 values(110,'Kayal','Andheri',85000,'31-MAR-16');
insert into deposit_urk20ai1041 values(201,'Pramod','Andheri',85000,'31-MAR-16');

create table branch_urk20ai1041
(
bname varchar2(20),
city varchar2(18)
);
select * from branch_urk20ai1041;
insert into branch_urk20ai1041 values('Dharampeth','Nagpur');
insert into branch_urk20ai1041 values('M.G.Road','Bangalore');
insert into branch_urk20ai1041 values('Nehru place','Delhi');
insert into branch_urk20ai1041 values('powai','Bombay');

alter table branch_urk20ai1041
modify Bname varchar2(20);
desc branch_urk20ai1041;

select * from branch_urk20ai1041;

drop table customer_urk20ai1041
create table customer_urk20ai1041
(
cname varchar2(20),
city varchar2(18)
);
select * from customer_urk20ai1041;
desc customer_ulk20ai1002;

insert into customer_urk20ai1041 values('Pramod','Nagpur');
insert into customer_urk20ai1041 values('Sandip','Surat');
insert into customer_urk20ai1041 values('Shivani','Bombay');
insert into customer_urk20ai1041 values('Kranti','Bombay');
insert into customer_urk20ai1041 values('Naren','Bombay');

alter table customer_urk20ai1041
modify cname varchar2(20);

create table borrow_urk20ai1041
(
CustID number(5),
CName varchar2(15),
BName varchar2(15),
Loan_Amount number(10)
);

insert into borrow_urk20ai1041 values(375,'Pramod','Coimbatore',108000);
insert into borrow_urk20ai1041 values(481,'Kranti','Andheri',130000);
insert into borrow_urk20ai1041 values(109,'Naren','powai',75000);

/* Performing queries
List the total loan amount taken by borrowers.
Find the total deposit done by depositors.
List the total loan taken from Andheri branch.
Write a query to find the total deposit of customers having account date later than 1-
jan-16.
Find the average of the deposit of customers living in city Nagpur.
List the max deposit of customers living in Bombay.
How many distinct branch cities are there in the branch table?
Find the total number of customer cities.
Write a query to display the branch name and branch wise deposit.
Give the branch wise deposit of the customer after account date 1-JAN-16.
Find the total number of borrowers in each branch.
Find the total count of the depositors branch wise.
Write a query to find the maximum loan from branch Coimbatore.
List the branches having sum of deposit more than 50000.
Calculate the length of the string ‘dbms’ from dual table.
Display the names of the customer in uppercase.
Display the substring “nil” From “Sunil” from deposit table.
Prefix actno column with two 00’s in deposit table.
Sort the deposit table based on actno.
Find the total number of months since an account is opened by the customers.
Use round and trunc functions to round off and truncate the value 15.6789 to decimal
positions after the decimal point using dual table.*/
select sum(Loan_Amount) from borrow_urk20ai1041;
select sum(Amount) from deposit_urk20ai1041;
select sum(Loan_Amount) from borrow_urk20ai1041 where BName ='Andheri';
select sum(Amount) from deposit_urk20ai1041 where Day>'1-jan-16';
select avg(Amount) from deposit_urk20ai1041 where Bname like'%Nagpur%';
SELECT MAX(Amount) FROM deposit_urk20ai1041 WHERE CName in (SELECT
CName FROM customer_urk20ai1041 WHERE City = 'Bombay');
select count(*) As Distinctbranch from(select distinct City from branch_urk20ai1041);
select count(*) As customercities from(select distinct City from
customer_urk20ai1041);
select BName,sum(Amount) from deposit_urk20ai1041 group by BName order by 1;
select Bname,sum(Amount) from deposit_urk20ai1041 where day>'1-JAN-16' group
by Bname;
select count(custID),Bname from borrow_urk20ai1041 group by Bname;
select count(AccNO),Bname from deposit_urk20ai1041 group by Bname;
select max(loan_amount) from borrow_urk20ai1041 where Bname='Coimbatore';
select Bname,sum(Amount)from deposit_urk20ai1041 group by Bname having
sum(Amount)>50000 order by 2;
select length('dbms') from dual;
select upper(Cname),city from customer_urk20ai1041 order by 1;
select substr('Sunil',3,5) from dual;
select lpad(AccNo,5,'0') from deposit_urk20ai1041;
select * from deposit_urk20ai1041 order by 1;
select cname,round(months_between('06-Feb-2022',day)) from deposit_urk20ai1041;
select round(15.6789),trunc(15.6789) from dual;
