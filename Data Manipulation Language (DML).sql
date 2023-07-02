/*Create a table deposit with the following specifications
Column name Data type
Actno Varchar2(5)
Cname Varchar(18)
Bname Varchar2(18)
Amount Number(8,2)
Adate Date*/

CREATE TABLE deposit_1041
(
Actno Varchar2(5),
Cname Varchar(18),
Bname Varchar2(18),
Amount Number(8,2),
Adate Date
);
/*Create a table branch with the following specifications
Column name Data type
Bname Varchar2(5)
City Varchar(18)*/
CREATE TABLE branch_1041
(
Bname Varchar2(5),
City Varchar(18)
);
/*Create a table customer with the following specifications
Column name Data type
Cname Varchar2(5)
City Varchar(18)*/
CREATE TABLE customer_1041
(
Cname Varchar2(5),
City Varchar(18)
);
/*Create a table borrow with the following specifications
Column name Data type
Loanno Varchar2(5)
Cname Varchar(18)
Bname Varchar2(18)
Amount Number(8,2)*/
CREATE TABLE borrow_1041
(
Loanno Varchar2(5),
Cname Varchar(18),
Bname Varchar2(18)
Amount Number(8,2)
);

/*Insert the following data as shown in the tables
Deposit table:
actno Cname Bname amount Adate
101 Anil VRCE 1000 1-MAR-95
101 Sunil AJNI 5000 4-JAN-96
102 Mehul Karolbagh 3500 17-NOV-95
104 Madhuri Chandni 1200 17-DEC-95
105 Pramod M.G.Road 3000 27-MAR-96*/
INSERT INTO deposit_1041 (actno, Cname, Bname, amount, adate)
VALUES ('101', 'Anil', 'VRCE', 1000, '1-MAR-95');
INSERT INTO deposit_1041 (actno, Cname, Bname, amount, adate)
VALUES ('101', 'Sunil', 'AJNI', 5000, '4-JAN-96');
INSERT INTO deposit_1041 (actno, Cname, Bname, amount, adate)
VALUES ('102', 'Mehul', 'Karolbagh', 3500, '17-NOV-95');
INSERT INTO deposit_1041 (actno, Cname, Bname, amount, adate)
VALUES ('104', 'Madhuri', 'Chandni', 1200, '17-DEC-95');
INSERT INTO deposit_1041 (actno, Cname, Bname, amount, adate)
VALUES ('105', 'Pramod', 'M.G.Road', 3000, '27-MAR-96');

/*Branch Table
Bname City
VRCE Nagpur
AJNI Nagpur
Karolbagh Delhi
Chandni Delhi
Andheri Bombay
Virar Bombay*/
INSERT INTO branch_1041 (Bname, City)
VALUES ('VRCE', 'Nagpur');
INSERT INTO branch_1041 (Bname, City)
VALUES ('AJNI', 'Nagpur');
ALTER TABLE branch_1041
MODIFY Bname Varchar2(18);
INSERT INTO branch_1041 (Bname, City)
VALUES ('Karolbagh', 'Delhi');
INSERT INTO branch_1041 (Bname, City)
VALUES ('Chandni', 'Delhi');
INSERT INTO branch_1041 (Bname, City)
VALUES ('Andheri', 'Bombay');
INSERT INTO branch_1041 (Bname, City)
VALUES ('Virar', 'Bombay');

/*Customer Table
Cname City
Anil Calcutta
Sunil Delhi
Mehul Baroda*/
INSERT INTO customer_1041 (Cname, City)
VALUES ('Anil', 'Calcutta');
INSERT INTO customer_1041 (Cname, City)
VALUES ('Sunil', 'Delhi');
INSERT INTO customer_1041 (Cname, City)
VALUES ('Mehul', 'Baroda');
ALTER TABLE customer_1041
MODIFY Cname Varchar2(18);
INSERT INTO customer_1041 (Cname, City)
VALUES ('Mandar', 'Patna');
INSERT INTO customer_1041 (Cname, City)
VALUES ('Madhuri', 'Nagpur');
SELECT * FROM customer_1041

/*Borrow Table
Loanno Cname Bname Amount
201 Anil VRCE 1000
206 Mehul Agni 5000
311 Sunil Dharampeth 3000*/
INSERT INTO borrow_1041 (Loanno, Cname, Bname, Amount)
VALUES (201, 'Anil', 'VRCE', 1000)
INSERT INTO borrow_1041 (Loanno, Cname, Bname, Amount)
VALUES (206, 'Mehul', 'Agni', 5000)
INSERT INTO borrow_1041 (Loanno, Cname, Bname, Amount)
VALUES (311, 'Sunil', 'Dharampeth', 3000)
SELECT * FROM borrow_1041

/*List all the data from tables.*/
select * from deposit_1041;
SELECT * FROM borrow_1041;
SELECT actno, amount FROM deposit_1041;
SELECT Cname FROM customer_1041;
SELECT Bname FROM branch_1041;
SELECT Cname FROM customer_1041
WHERE City = 'Nagpur';
SELECT Cname, amount FROM deposit_1041
WHERE amount > 4000;
SELECT Cname, adate FROM deposit_1041
WHERE Cname = 'Anil';
SELECT Bname, city FROM branch_1041
WHERE City = 'Bombay';
SELECT Cname, Bname FROM deposit_1041
WHERE Bname = 'VRCE';
SELECT Bname, city FROM branch_1041
WHERE City = 'Delhi';
SELECT Cname, adate FROM deposit_1041
WHERE adate > '1-DEC-95';
SELECT Cname, adate, amount FROM deposit_1041
WHERE adate > '1-DEC-95' AND adate < '1-JUNE-96';
UPDATE deposit_1041
SET amount = amount + amount * 0.1
DELETE FROM customer_1041
WHERE city = 'Bombay';
SELECT * from customer_1041
WHERE Cname LIKE '%l';
