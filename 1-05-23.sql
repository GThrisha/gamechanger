create database thrisha; 

show databases;

drop database thrisha;

alter table rgm_student add address varchar(30);

select * from rgm_student;

update rgm_student set  address="hyderabad" where student_id=101

alter table rgm_student modify column address varchar(50);

alter table rgm_student drop column address;

ALTER TABLE RGM_STUDENT ADD ADDRESS VARCHAR(30); -- ADD COLUMN TO TABLE

UPDATE RGM_STUDENT SET ADDRESS = 'HYDERABAD' WHERE STUDENT_ID=40; -- ADD DATA TO NEW COLUMN

ALTER TABLE RGM_STUDENT MODIFY COLUMN ADDRESS VARCHAR(50); -- ALTER COLUMN DATATYPE OR SIZE

ALTER TABLE RGM_STUDENT DROP COLUMN ADDRESS; -- DROP PARTICULAR COLUMN

ALTER TABLE rgm_student DROP COLUMN student_contact,DROP student_dept;

DELETE FROM RGM_STUDENT;

SELECT * FROM student;

SELECT MAX(MARKS) FROM STUDENT;

SELECT MIN(MARKS) FROM STUDENT;

SELECT SUM(MARKS) FROM STUDENT;

SELECT AVG(MARKS) FROM STUDENT;

SELECT SUM(MARKS) as total FROM STUDENT;

select count(marks) from student;

create database exercise;

create table customer( ID INT PRIMARY KEY,NAME VARCHAR(20),CITY VARCHAR(30),GRADE INT,SALESMAN_ID INT);

INSERT INTO CUSTOMER values (101,'THRISHA','HYDERABAD',99,201),
(102,'ASHWINI','MUMBAI',98,202),
(103,'KEERTHANA','DELHI',97,203),
(104,'NISSI','BANGLORE',96,204),
(105,'KASTURI','LUCKNOW',95,206),
(106,'SWETHA','JAIPUR',93,205),
(107,'BINDU','CHENNAI',90,208),
(108,'NAVYA','KOLKATA',92,207),
(109,'GEETHIKA','TRIVANDRUM',89,209),
(110,'VIDYA','KASHMIR',88,210)

-- WRITE A SQL QUERY TO FIND OU THE DETAILS OF THE CUSTOMER WHOSE GRADE ARE ABOVE 100--

select * FROM CUSTOMER WHERE GRADE>100


SELECT * FROM CUSTOMER

-- WRITE A SQL QUERY TO FIND OU THE DETAILS OF THE CUSTOMER WHOSE GRADE ARE ABOVE AND EUAL TO 100 IN ASCENDING order

SELECT GRADE FROM CUSTOMER WHERE GRADE>=100 ORDER BY GRADE;

SELECT GRADE FROM CUSTOMER WHERE GRADE>=100 ORDER BY GRADE ASC;

-- WRITE A SQL QUERY TO FIND OU THE DETAILS OF THE CUSTOMER WHO ARE LIVING IN HYDERABAD AND GRADE >=100

select * FROM CUSTOMER WHERE CITY="HYDERABAD" AND GRADE>=100;

-- WRITE A SQL QUERY TO FIND OUT THE NAMES OF THE CUSTOMERS WHO ARE FROM HYDERABAD OR HAVE A GRADE ABOVE 100

SELECT NAME FROM CUSTOMER WHERE CITY="HYDERABAD" OR GRADE>100

-- WRITE AN SQL QUERY TO FIND CUSTOMER DETAILS WHO ARE EITHER FROM TRIVANDRUM CITY OR WHO DO NOT HAVE A GRADE MORETHAN 100 --

select * FROM CUSTOMER WHERE CITY="TRIVANDRUM" OR NOT GRADE>100;
 
 -- write AN SQL QUERY TO IDENTIFY WHO DO NOT BELONG TO THE CITY MUMBAI OR HAVE A GRADE THAT EXCEEDS BY 200
 
SELECT * FROM CUSTOMER WHERE NOT CITY="MUMBAI" OR  GRADE>200;
 
 SELECT * FROM CUSTOMER
 
 -- FIND THE DETAILS OF THE ORDER  EXCLUDING THE DATE SUPPOSE 30 APRIL 2023 AND SALESMAN ID MORE THAN 202NOR PURCHASE AMOUNT GRAETAER THAN 1000
 
 CREATE TABLE ORDERS(ORDER_NUM INT,
 PURCHASE_AMOUNT INT,
 ORDER_DATE DATE,
 CUSTOMER_ID INT,
 SALESMAN_ID INT);
 
 INSERT INTO ORDERS VALUES(202,1000,'2023-04-25',212,200),
 (203,1500,'2023-04-28',219,222),
 (205,1700,'2023-04-18',218,213),
 (209,2000,'2023-03-18',211,223),
 (207,5000,'2023-04-11',284,291)
 
 SELECT * FROM ORDERS;
 
 -- FIND THE ORDER DETAILS EXCLUDING THE DATE 30-04-2023 AND SALESMAN ID MORE THAN 202 OR PURCHASE AMOUNT GREATER THAN 1000
 
 SELECT * FROM ORDERS WHERE NOT ORDER_DATE='2023-04-30' AND SALESMAN_ID>202 OR PURCHASE_AMOUNT>1000;
 
 CREATE TABLE SALESMAN(
 SALESMAN_ID INT PRIMARY KEY,
 NAME VARCHAR(30),
 CITY VARCHAR(30),
 COMMISSION FLOAT);
 
 SELECT * FROM SALESMAN;
 
 INSERT INTO SALESMAN VALUES(205,'THRISHA','HYDERABAD',0.15),
 (201,'SUMA','BANGLORE',0.56),
 (209,'BHAVANA','CHENNAI',0.72),
 (204,'SUJATHA','KOLKATA',0.43),
 (202,'POOJA','KURNOOL',0.33)
 
 -- FIND THE SALESMAN DETAILS WHOSE COMMISSION IS BETWEEN 0.23 AND 0.43
 
 SELECT * FROM SALESMAN WHERE COMMISSION BETWEEN 0.23 AND 0.43
 
 -- FIND OUT THE SALESMAN NAME WHOSE NAME STARTS WITH LETTER K
 
 SELECT * FROM SALESMAN WHERE NAME LIKE 'K%';
 
 -- CREATE A NEW COLUMN ADDRESS ,INSERT SOME DATA INTO THAT ADDRESS COLUMN AND DISPLAY ALL THOSE ADDRESS IN DESCENDING ORDER DISPLAY ADDRESS AS "SALESMAN_ADDRESS"

 ALTER TABLE salesman ADD  ADDRESS VARCHAR(30);
UPDATE SALESMAN SET ADDRESS ='BLR' WHERE NAME="SUMA"
UPDATE SALESMAN SET ADDRESS ='KNL' WHERE NAME="POOJA"
UPDATE SALESMAN SET ADDRESS ='KKA' WHERE NAME="SUJATHA"
UPDATE SALESMAN SET ADDRESS ='HYD' WHERE NAME="THRISHA"
UPDATE SALESMAN SET ADDRESS ='CHN' WHERE NAME="BHAVANA"
SELECT * FROM SALESMAN ODER BY ADDRESS DESC;
SELECT ADDRESS AS SALESMAN_ADDRESS FROM SALESMAN ORDER BY ADDRESS DESC;
SELECT * FROM SALESMAN;




-- create database db_name
-- create database rgm;

-- create table table_name
 create table student(
 student_id int primary key not null,
 student_name varchar(30) not null,
 student_contact int not null,
 student_dept varchar(25) not null
 );

-- select * from student;
-- one way to insert
INSERT INTO student(student_id,student_name,student_contact,student_dept)
 VALUES (101,"Thrisha",1234567890,"cse");

-- other way to insert
INSERT INTO student VALUES (102,"suma",1234567899,"cse");
 INSERT INTO student VALUES (103,"bhavana",1234567889,"ece");
 INSERT INTO student VALUES (104,"pooja",1324557683,"eee");
 INSERT INTO student VALUES (105,"sujatha",1618521854,"cseds");
 INSERT INTO student VALUES (106,"yeshwitha",1381487234,"ece");
 INSERT INTO student VALUES (108,"lakshmi",1234566899,"mech"),(109,"moksha",1234556899,"eie");
 select * from student;

alter table student rename column student_name to name; 

alter table student rename to RGM_STUDENT;

select * from RGM_STUDENT;





-- CREATE DATABASE HEROWIRED;
--  CREATE TABLE RGM(name varchar(30) not null,college varchar(30) not null,session varchar(20) not null,contact_no int primary key not null,address varchar(40) not null);
-- select * from RGM;
-- INSERT INTO RGM (name,college,session,contact_no,address)
-- values ("Thrisha","RGMCET","sql",1234567890,"Allagadda");

INSERT INTO RGM VALUES("Ashwini","JNTU","python",1234567899,"Kurnool");
 INSERT INTO RGM VALUES("Keerthana","IARE","java",1234568899,"Hyderabad");
 INSERT INTO RGM VALUES("Nissi","SVCE","C",1234566899,"Vijayawada");
 INSERT INTO RGM VALUES("Bindu Sree","SVEC","C++",1234567888,"Chennai");
 INSERT INTO RGM VALUES("Hema","SVNE","C#",1234557899,"Tirupati");
 INSERT INTO RGM VALUES("Likhitha","KLU","DBMS",1234447899,"Vizag");
 INSERT INTO RGM VALUES("Swetha","AITK","php",1235557899,"Chennai");
 INSERT INTO RGM VALUES("Geethika","MITS","reactjs",1238989899,"Banglore");
 INSERT INTO RGM VALUES("Keerthi","GPREC","Nodejs",1234534899,"Kurnool");

-- FIND ALL ROWS WHERE SESSION IS EQUAL TO JAVA 
SELECT * FROM RGM where session="java";
 
SELECT name,session from rgm where session="java";
 
SELECT * FROM rgm where address="kurnool"

-- select whose name starts with 's'
SELECT * from rgm where name LIKE "s%";

-- select whose name starts with 's'
SELECT * from rgm where name LIKE "sw%";

-- select whose name ends with 'a'
SELECT * from rgm where name LIKE "%a";

-- select whose name ends with 'e'
SELECT * from rgm where name LIKE "%e";

-- select whose name  starts with 'b' and ends with 'e'
SELECT * from rgm where name LIKE "b%e";

-- find all values that have 'r' in any position      '%' represents group of characters
SELECT * from rgm where name LIKE "%r%";

-- find all values that have 'r' in third position    '_' represnts individual character
SELECT * from rgm where name LIKE "__r%";

-- find all values except names start with 's'
SELECT * FROM rgm WHERE name NOT LIKE "S%";

-- find all values except names whose seecond letter is 'h'
SELECT * FROM rgm WHERE name NOT LIKE "_h%";

-- 'IN' CLAUSE
select * FROM rgm  where address IN ('HYDERABAD','KURNOOL');

SELECT * from rgm WHERE college IN ('SVNE','RGMCET','IARE');

SELECT * from rgm WHERE college="RGMCET" OR  college="IARE";

-- if person have two address then use 'AND'
SELECT * from rgm WHERE college="RGMCET" AND  college="IARE";

-- DISTINCT KEYWORD- TO SEARCH UNIQUE VALUES 
SELECT DISTINCT ADDRESS FROM RGM; 

SELECT COUNT(DISTINCT ADDRESS) from rgm;

SELECT COUNT(DISTINCT session) from rgm;

SELECT * FROM RGM LIMIT 3;  -- SHOS ONLY THREE ENTRIES

SELECT * FROM RGM WHERE ADDRESS="HYDERABAD" LIMIT 2;

-- IF WE WANT TO GROUP SOME COLUMNS WE USE GROUP BY
SELECT COUNT(ADDRESS),ADDRESS FROM RGM GROUP BY ADDRESS;

SELECT * FROM RGM;

SELECT * FROM RGM WHERE COLLEGE='RGMCET' ORDER BY SESSION LIMIT 5;

CREATE TABLE DOB(
DATE DATE NOT NULL);

INSERT INTO DOB VALUES('2003-04-18');
SELECT * FROM DOB;

create table salesman(salesman_id int primary key not null,name varchar(20) not null,
city varchar(20) not null, commission float not null);

insert into salesman values(5001,"suma","banglore", 0.19);
insert into salesman values(5002,"pranavi","bombay", 0.11);
insert into salesman values(5003,"madhu","delhi", 0.15);
insert into salesman values(5004,"devika","jaipur", 0.17);
insert into salesman values(5005,"dharani","lucknow", 0.13);

select name,commission from salesman;

select * from rgm;

update rgm set session="java" , address="kurnool" where contact_no=1234567899;







create table student(id int primary key not null,
Name varchar(30) not null,
marks int not null);

INSERT INTO STUDENT VALUES(101,"thrisha",330);
INSERT INTO STUDENT VALUES(102,"suma",250);
INSERT INTO STUDENT VALUES(103,"sujatha",220);
INSERT INTO STUDENT VALUES(104,"pooja",310);
INSERT INTO STUDENT VALUES(105,"bhavana",270);
INSERT INTO STUDENT VALUES(106,"kasturi",230);
INSERT INTO STUDENT VALUES(107,"anitha",240);
INSERT INTO STUDENT VALUES(108,"lohitha",210);
INSERT INTO STUDENT VALUES(109,"priya",310);
INSERT INTO STUDENT VALUES(110,"pranitha",290);

SELECT * FROM STUDENT where marks=330;

SELECT * FROM STUDENT where marks<330;

SELECT * FROM STUDENT where marks>300;

SELECT * FROM STUDENT where marks>=250;

SELECT * FROM STUDENT where id>105;

SELECT * FROM STUDENT where marks!=310;
          -- != and <> are same --
SELECT * FROM STUDENT where marks<>105;

-- BETWEEN -TO KNOW  VALUES IN SOME RANGE
SELECT * FROM STUDENT where marks BETWEEN 200 AND 300;

-- ORDER BY  marks in ascending order
SELECT * FROM STUDENT where marks BETWEEN 200 AND 300 ORDER BY marks;
 -- marks in ascending order     -- same --
SELECT * FROM STUDENT where marks BETWEEN 200 AND 300 ORDER BY marks asc;
 -- marks in descending order
SELECT * FROM STUDENT where marks BETWEEN 200 AND 300 ORDER BY marks desc;

SELECT * FROM STUDENT WHERE NOT MARKS =330;  -- SAME AS !=

SELECT * FROM STUDENT WHERE NOT MARKS=250 AND NOT MARKS=310;

show databases;  -- to see all the databases present 

select * from student;
 
UPDATE STUDENT SET student_name="Suma" where student_id=102;

create table test(student_id int primary key not null,
student_ame varchar(30) not null,
student_contact int not null,student_dept varchar(30) not null);

insert into test select * from rgm.student;  -- copying student data into the test table

select * from test;

-- truncate table table_name
truncate table test;

select * from rgm.student;

delete from rgm.student where student_name="Thrisha";

drop table rgm.student;

select * from test;

 