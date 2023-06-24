/*Single Row Subquery: Returns to the outer query one row of results that consists of one
column.
● Multiple Row Subquery: Returns to the outer query more than one row of results
● Multiple-Column Subquery: Returns to the outer query more than one column of results.
● Correlated Subquery: References a column in the outer query, and executes the subquery
once for every row in the outer query.
● Uncorrelated Subquery: Executes the subquery first and passes the value to the outer
query.
● Multiple Row Comparison Operators:
IN: Equal to any member in the list
ANY: Compare value to each value returned by the subquery
ALL: Compare value to every value returned by the subquery*/
select cname as customername, amount from deposit1b_URK20AI1041
where amount in (select max(amount) from deposit1b_URK20AI1041);

select cname,amount from deposit1b_URK20AI1041
where cname in(select cname from customer1b_URK20AI1041 where city='Nagpur')

select cname, bname from deposit1b_URK20AI1041
where bname='Karolbagh' and amount>any(select amount from deposit1b_URK20AI1041
where bname='Virar');

select cname from deposit1b_URK20AI1041 where cname in (select cname from
customer1b_URK20AI1041 where city='Nagpur')

select bname,city from branch1b_URK20AI1041 where bname in(select bname from
deposit1b_URK20AI1041 where cname in ('Anil','Sunil'))

select bname,city from branch1b_URK20AI1041 where city in(select city from
customer1b_URK20AI1041 where cname='Anil' or cname='Sunil')

select cname,loanno,amount from borrow1b_URK20AI1041 where bname in
(select bname from deposit1b_URK20AI1041 where cname='Sunil')

select cname from borrow1b_URK20AI1041 where amount > all (select amount from
borrow1b_URK20AI1041 where cname='Anil')

select cname from deposit1b_URK20AI1041 where amount>1000 and cname in (select
cname from borrow1b_URK20AI1041 where amount<10000);

select cname from deposit1b_URK20AI1041 where bname in(select bname from
deposit1b_URK20AI1041 where cname='Sunil')

select cname from customer1b_URK20AI1041 where city ='Nagpur' and
cname in (select cname from deposit1b_URK20AI1041 where bname in (select
bname from branch1b_URK20AI1041 where city='Bombay' or city='Delhi'))

select cname,amount,bname from deposit1b_URK20AI1041 d
where amount> (select sum(amount) from borrow1b_URK20AI1041 group by cname
having cname = d.cname)

select cname from customer1b_URK20AI1041 c where city in (select
city from branch1b_URK20AI1041 b where b.bname in (select bname
from deposit1b_URK20AI1041 d where d.cname = c.cname))
