--DDL commands
CREATE TABLE stores (
	store_id INT IDENTITY (1, 1) PRIMARY KEY,
	store_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255),
	street VARCHAR (255),
	city VARCHAR (255),
	state VARCHAR (10),
	zip_code VARCHAR (5)
);

drop table stores;

insert into stores(store_name,phone,email,street,city,state,zip_code('kiran','9012345678','','','')

create table emp(empid varchar(20) primary key,dept varchar(20),salary int);

alter table emp add empname varchar(20);

insert into emp values('101','hr','20000','jatin');
insert into emp values('102','sales','25000','jatin');
insert into emp values('103','marketing','27000','jatin');
insert into emp values('104','sales','20000','jatin');
insert into emp values('105','it','30000','jatin');
insert into emp values('106','hr','23000','jatin');
insert into emp values('107','marketing','40000','jatin');
insert into emp values('108','development','80000','jatin');
insert into emp values('109','hr','25000','jatin');
insert into emp values('110','marketing','20000','jatin');
insert into emp values('111','it','50000','jatin');
insert into emp values('112','sales','20000','jatin');


select * from emp;

select empid,dept,salary as sal from emp where salary>=all(select salary,empid from emp where dept='marketing') ; 
select empid,dept,salary as sal from emp where salary>=any(select salary from emp where dept='marketing') ; 
