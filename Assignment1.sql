create database demo;

create table cust(cust_id varchar(5),lname char(10),fname char(10),area varchar(10),phone_no numeric(10));

insert into cust values
('a01','Patel','Ajay','Anand',381334),
('a02','Shah','Anajali','Surat',556037),
('a03','Thakkar','Vinay','Baroda',372631),
('a04','Joshi','Kamal','Suarat',666612),
('a05','Pandya','Rohan','Anand',null),
('a06','Patel','Kajal','Baroda',512527)




create table movie(mv_no numeric(5),Title varchar(25),Type varchar(10),Star varchar(25),Price numeric(8,2));

insert into movie values
(1,'Hera Pheri','Comedy','Paresh Raval',105),
(2,'Kuch Kuch Hota Hai','Romantic','Kajol',225.00),
(3,'Drashyam','Suspemse','Ajay Devagan',250),
(4,'Welcome','Comedy','Anil Kapoor',200.00),
(5,'Gupt','Suspense','Bobby Deol',195),
(6,'Tere Naam','Romantic','Salman Khan',190),
(7,'Hungama','Comedy','Akshay Khanna',135),
(8,'Ajanabee','Suspense','Akshay Kumar',165),
(9,'No Entry','Comedy','Anil Kapoor',220),
(10,'Singham','Action','Ajay Devagan',195)

select * from cust;

select * from movie;

select fname,area from cust;

select fname,lname from cust where cust_id='a01' or cust_id='a02';

select * from cust where cust_id='a02' and area='Surat';

select * from cust where phone_no is null;

select * from movie where Price>200.00;

select title,Type from movie where Price between 150 and 200;

select * from movie where Type in('Comedy','Action');

select * from movie where Type='Comedy' or Type='Action';

select * from movie where Type='Suspense' and Price>180;

select Title,Star,Price from movie where Type='Comedy';

select distinct Type from movie;

select Type from movie group by Type;

select * from movie order by Title;

select * from movie order by Price desc;

select * from movie where Type in('Action','Romantic') and Price<200;