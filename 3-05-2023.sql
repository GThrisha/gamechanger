select * from manager;

--  finding first largest salary from the manager table
select name,salary from manager order by salary desc limit 0,1;

--  finding second largest salary from the manager table
select name,salary from manager order by salary desc limit 1,1;

-- finding third largest salary from the manager table
select name,salary from manager order by salary desc limit 2,1;

-- finding fourth largest salary from the manager table
select name,salary from manager order by salary desc limit 3,1;

-- finding second least salary (ascending order)
select name,salary from manager order by salary  limit 1,1;

-- finding least salary (ascending order)
select name,salary from manager order by salary  limit 0,1;

-- joins: joins are used to find common data from two tables
-- join and inner join are same
create table orders1(
order_id int,customer_id int,order_date date);

create table customer1(
cust_id int,cust_name varchar(30),contact_name varchar(30),country varchar(20));

insert into customer1 values(108,'thrisha','satyam','india'),
(110,'suma','hariprasad','usa'),
(112,'sujatha','nagaraju','uk'),
(114,'pooja','siva','australia'),
(116,'bhavana','lakshmi narayana','china');

insert into orders1 values(200,116,'2023-12-07'),
(210,108,'2023-04-18'),
(222,110,'2023-10-09'),
(290,120,'2023-04-11'),
(230,111,'2023-07-14');

select * from orders1;

select * from customer1;

-- join
-- inner join syntax: 
-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2
-- ON table1.column_name = table2.column_name;

select orders1.customer_id,customer1.cust_id,orders1.order_id,customer1.cust_name,orders1.order_date from orders1
inner join customer1 on orders1.customer_id=customer1.cust_id;

create table staff(
id int,
name varchar(30),
age int,
package int);

create table payment(
id int,
date_ date,
staff_id int,
amount int);

insert into staff values(100,'thrish',20,1600000),
(200,'suman',20,1500000),
(300,'bhavani',21,1600000),
(400,'pooji',21,1400000),
(500,'sujana',22,1000000);

insert into payment values(12345,'2020-02-02',400,50000),
(23456,'2022-09-04',300,30000),
(34567,'2023-08-08',200,25000),
(45678,'2021-03-09',100,39000),
(67789,'2024-05-09',600,20000);

select * from payment;

select * from staff;

select name,age,amount from staff s,payment p where s.id=p.staff_id;

select s.id,name,age,amount from staff s,payment p where s.id=p.staff_id;

alter table orders1 add shipping_id int;

select * from orders1;

update  orders1 set shipping_id=1234 where order_id=200;
update  orders1 set shipping_id=2345 where order_id=210;
update  orders1 set shipping_id=3456 where order_id=222;
update  orders1 set shipping_id=4567 where order_id=290;
update  orders1 set shipping_id=5678 where order_id=230;

-- to remove a column from the table
-- alter table orders drop column cust_id;

create table shipping(
shipping_id int,name varchar(30));

insert into shipping values(1234,'dtdc'),
(2345,'expressbees'),
(3456,'ekart'),
(4567,'xyz'),
(5678,'abc');

-- joining of three tables orders1,customer1 and shipping

select orders1.order_id,customer1.cust_name,shipping.name from 
((orders1 inner join customer1 on orders1.customer_id=customer1.cust_id)
inner join shipping on orders1.shipping_id=shipping.shipping_id);

-- left join of orders1 and customer1 tables
select customer1.cust_name,orders1.order_id from customer1 
left join orders1 on customer1.cust_id=orders1.customer_id;

-- left join of orders1 and customer1 tables order by customer name in ascending order
select customer1.cust_name,orders1.order_id from customer1 
left join orders1 on customer1.cust_id=orders1.customer_id order by customer1.cust_name;

-- left join of orders1 and customer1 tables order by customer name in desc order 
select customer1.cust_name,orders1.order_id from customer1 
left join orders1 on customer1.cust_id=orders1.customer_id order by customer1.cust_name desc;

-- left join of orders1 and customer1 tables
select customer1.cust_name,orders1.order_id from customer1 
left join orders1 on customer1.cust_id=orders1.customer_id where customer1.cust_name like 's%' order by customer1.cust_name;

-- right join of orders1 and customer1 tables
select customer1.cust_name,orders1.order_id from customer1 
right join orders1 on customer1.cust_id=orders1.customer_id;

select cust_name,country,order_date from customer1 
right join orders1 on customer1.cust_id=orders1.customer_id;

select cust_name,orders1.order_id from customer1 full join orders1 on cust_id=orders1.customer_id;

create table test(
id int primary key not null auto_increment,
c2 varchar(30) not null,
c3 varchar(30) default 'software engineer');

select * from test;

alter table test AUTO_INCREMENT = 100;