/*Create the following tables
Course(coursecode,coursename,syllabus,lastno)
Feespaid(rollno,feespaiddate,chequeno,bankname,remarks,amount)
<10001,’25-jul-98’,12345,’’,20000>
<10002,’27-jul-15’,12789,’’,25000>
<10003,’2-oct-16’,13456,’’,35000>
Enquiry(enquiryno,name,coursecode,street,city,enquirydate,refcode)
<1100011,anil,10,ramnagar,Nagpur,01-jul-98,1001>
<1100012,achin,20,gandhinagar,Nagpur,01-sep-99,1002>*/
CREATE OR REPLACE TRIGGER t1
BEFORE INSERT ON course
for each row
BEGIN
IF :new.coursecode>9 and :new.coursecode<99 THEN
DBMS_OUTPUT.PUT_LINE('Valid');
ELSE
DBMS_OUTPUT.PUT_LINE('Invalid');
END IF;
END;

INSERT into course values(19,'sql','triggers',70)


Query:
select * from course;
DELETE
FROM
course
WHERE
coursecode=19;
CREATE OR REPLACE TRIGGER t2
BEFORE INSERT or
UPDATE or DELETE on enquiry
for each row
BEGIN
IF (:new.name = 'student1') THEN
raise_application_error(-20022,'cannot perform the operation');
END IF;
END;
INSERT into enquiry values(1100013,'student2',10,'ramnagar','Nagpur','01-jul-98',1001);


Query:
DELETE
FROM
enquiry
WHERE
name='student2';
CREATE OR REPLACE TRIGGER t3
BEFORE INSERT on feespaid
FOR EACH ROW
BEGIN
IF(:new.amount<1000) THEN
raise_application_error(-20022,'cannot perform the operation');
END IF;
END;
INSERT INTO feespaid (rollno,feespaiddate,chequeno,bankname,amount)
VALUES (10004,'27-jul-15',12789,'',2500);

Query:
DELETE
FROM
feespaid
WHERE
rollno='10004';
create OR REPLACE TRIGGER t4
BEFORE INSERT on enquiry
FOR EACH ROW
BEGIN
IF(:new.enquirydate >'25-aug-17') THEN
raise_application_error(-20024,'cannot perform the operation');
END IF;
END;
DELETE
FROM
enquiry
WHERE
enquiryno='1100920';
INSERT INTO ENQUIRY(enquiryno,name,coursecode,street,city,enquirydate,refcode)
VALUES(1100920,'achin',20,'gandhinagar','Nagpur','22-sep-25',1041);

Query:
CREATE OR REPLACE TRIGGER t5
BEFORE UPDATE ON enquiry
FOR EACH ROW
BEGIN
IF (:old.coursecode != :new.coursecode) THEN
RAISE_APPLICATION_ERROR(-20024,'Wrong Course Code');
END IF;
END;
UPDATE enquiry SET coursecode = 20 WHERE name = 'anil';
