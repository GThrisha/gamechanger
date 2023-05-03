create table car(
car_no int,
car_name varchar(30),
car_price int,
car_quantity int);

insert into car values(1804,'BMW',1000000,1),
(2711,'KIA',800000,2),
(0777,'MG',600000,1),
(0872,'FORD',900000,3),
(0303,'TATA',700000,2);

select * from car;

insert into car values(1805,'BENZ',1200000,3);

select car_name,car_price from car group by car_price;

select count(car_name),car_price from car group by car_price;

select count(car_name) as count_number,car_price from car group by car_price;

-- having clause : we will give more conditions
select count(car_name)  from car group by car_price having car_price>600000;

select count(*) from car group by car_price having car_price>1000000;

create table  visit(
entry_date date,price int,duration int);

insert into visit values("2023-04-18",1000,5),
("2023-04-18",1500,10),
("2023-04-08",800,4),
("2023-04-08",500,6),
("2023-05-07",800,2);

select * from visit;

select entry_date,count(*) from visit group by entry_date;

-- extract: it can extract month,year from the date
-- round() rounds the decimal points upto 3 decimals

select extract(year from entry_date) as year ,
extract(month from entry_date) as month,
extract(day from entry_date) as day,
round(avg(price),2) from visit 
group by extract(year from entry_date),extract(month from entry_date),extract(day from entry_date)
order by extract(year from entry_date),extract(month from entry_date);

select entry_date,round(avg(price),2) as avg_price from visit group by entry_date having count(*) >1  order by entry_date;

select entry_date,round(avg(price),2) as avg_price from visit group by entry_date having count(*) >3  order by entry_date;

select entry_date,round(avg(price),2) as avg_price from visit  where duration>5
group by entry_date having count(*)>=1 order by entry_date;

select * from customer;

select city,count(*) as customer_city from customer group by city;

create table employee(
emp_id int, name varchar(25),age int,country varchar(30));

insert into employee values(108,'anu',30,'india'),
(120,'meghana',25,'usa'),
(111,'moksha',21,'uk'),
(222,'vani',22,'australia'),
(118,'veena',20,'africa');

insert into employee values(110,'anupama',20,'india');

insert into employee values(108,'vinni',20,'uk');

select * from employee;

select count(country),country from employee group by country having count(country)>=2; 

select country,count(country) from employee group by country having max(age)>=30;

select country,count(country) from employee group by country having min(age)>=30;

create table manager(
id int,
name varchar(30),
gender varchar(20),
age int,
salary int);

insert into manager values(101,'swathi','f',23,60000),
(123,'rani','f',22,100000),
(145,'uday','m',25,120000),
(178,'mahesh','m',30,98000),
(183,'siri','f',26,110000);

select name,sum(salary) as total_salary from manager group by name having sum(salary)>100000 order by name;

select gender,sum(salary) as total_salary from manager group by gender having sum(salary)>100000 order by gender;

select age from manager group by age having age>20;

select age from manager group by age having count(age)>2;

select gender,max(salary) as max_salary from manager group by gender having max(salary)<200000; 

select gender,min(salary) as min_salary from manager group by gender having min(salary)<200000; 

select * from manager;

DELIMITER //
create procedure GetManagerInfo()
 BEGIN
  select * from manager where age=20;
 END //
 
 CALL GetManagerInfo();
 
 select * from manager;

select name from manager order by rand() limit 1; 
 
     