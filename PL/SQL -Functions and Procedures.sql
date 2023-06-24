/*PROCEDURE <name>
IS
BEGIN
-statements
EXCEPTION
END;*/
/*FUNCTION <name>
RETURN <data type>
IS
BEGIN
-statements
EXCEPTION
END;*/
/*Create the following tables
Course(coursecode,coursename,syllabus,lastno)
Insert the values into course table
<10,’oracle’,’sql’, 2>
<20,’java’,’java servlets’, 2>*/

Feespaid(rollno,feespaiddate,chequeno,bankname,remarks,amount)
<10001,’25-jul-98’,12345,’’,20000>
<10002,’27-jul-15’,12789,’’,25000>
<10003,’2-oct-16’,13456,’’,35000>

Enquiry(enquiryno,name,coursecode,street,city,enquirydate,refcode)
<1100011,anil,10,ramnagar,Nagpur,01-jul-98,1001>
<1100012,achin,20,gandhinagar,Nagpur,01-sep-99,1002>

Enrollment(rollno,enquiryno,batchcode,enrollmentdate)
<20002001,10001,200200,’1-jul-98’>
<20002003,10002,200202,’03-aug-17’>
<20002001,10003,200203,’02-sep-99’>

/*queries*/
DECLARE
anil_sal number(5,0);
BEGIN
SELECT salary into anil_sal FROM emp_company WHERE ename='Anil';
IF anil_sal < 1000 THEN
DBMS_OUTPUT.PUT_LINE('GRADE A');
ELSIF anil_sal < 2000 THEN
DBMS_OUTPUT.PUT_LINE('GRADE B');
ELSIF anil_sal < 3000 THEN
DBMS_OUTPUT.PUT_LINE('GRADE C');
ELSIF anil_sal < 4000 THEN
DBMS_OUTPUT.PUT_LINE('GRADE D');
END IF;
END;

DECLARE
n Number;
c varchar(20);
PROCEDURE coursename(code IN number, cname OUT varchar) IS
BEGIN
SELECT coursename INTO cname from Course WHERE coursecode= code;
DBMS_OUTPUT.PUT_LINE('course name: '||cname);
END;
BEGIN
n:=10;
coursename(n,c);
END;

DECLARE
n Number;
c varchar(20);
PROCEDURE coursename(code IN number, cname OUT varchar) IS
BEGIN
SELECT coursename INTO cname from Course WHERE coursecode= code;
DBMS_OUTPUT.PUT_LINE('course name: '||cname);
END;
BEGIN
n:=11;
coursename(n,c);
EXCEPTION
WHEN no_data_found THEN
DBMS_OUTPUT.PUT_LINE('course code is invalid');
END;

DECLARE
n Number;
c varchar(20);

FUNCTION total_amount
RETURN number is x number;
BEGIN
SELECT SUM(amount) INTO x
FROM feespaid;
RETURN X;
END;
BEGIN
n:=total_amount();

DBMS_OUTPUT.PUT_LINE('SU
M: '||n);
END;


DECLARE
n number;
ad_no number;
FUNCTION number_enq(num IN number)
RETURN number IS x number;
BEGIN
SELECT COUNT(*) INTO X FROM enquiry WHERE refcode=num;
RETURN x;
END;
BEGIN
ad_no:=1001;
n:= number_enq(ad_no);
DBMS_OUTPUT.PUT_LINE('ENQUIRY COUNT: '||chr(10)||n);
END;


DECLARE
st_no number;
fees number;
FUNCTION totalfees(num IN number)
RETURN number IS x number;
BEGIN
SELECT SUM(amount) INTO x FROM feespaid WHERE rollno=num;
RETURN x;
END;
BEGIN
st_no:=10001;
fees:=totalfees(st_no);
DBMS_OUTPUT.PUT_LINE('Feespaid by'||st_no||' is '||fees);
END;
