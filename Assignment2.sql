create table dept(deptno numeric(2) primary key,dname varchar(15),loc varchar(15));

insert into dept values
(10,'Accounting','New York'),
(20,'Research','Dallas'),
(30,'Sales','Chicago'),
(40,'Operations','boston')

update dept set loc='Boston' where deptno=40;

select * from dept;

create table emp
(empno numeric(4) primary key, ename varchar(10),job varchar(10),mgr numeric(4),
hiredate date,sal numeric(7,2),comm numeric(7,2),deptno numeric(2) references dept(deptno));

insert into emp values
(7499,'Allen','Salesman',7698,'20-feb-81',1600,300,30),
(7521,'Ward','Salesman',7698,'22-feb-81',1250,500,30),
(7566,'jones','Manager',7839,'02-apr-81',2975,null,20),
(7654,'Martin','Salesman',7698,'28-sep-81',1250,1400,30),
(7698,'Blake','Manager',7839,'01-may-81',2850,null,30),
(7782,'Clark','Manager',7839,'09-jun-81',2450,null,10),
(7788,'Scott','Analyst',7566,'09-dec-82',3000,null,20),
(7839,'King','President',null,'17-nov-81',5000,null,10),
(7844,'Turner','Salesman',7698,'08-sep-81',1500,0,30),
(7876,'Adams','Clerk',7788,'12-jan-83',1100,null,20),
(7900,'James','Clerk',7698,'03-dec-81',950,null,30),
(7902,'Ford','Analyst',7566,'03-dec-81',3000,null,20),
(7934,'Miller','Clerk',7782,'23-jan-82',1300,null,10)

select * from emp;


create table doctor(d_id varchar(3) primary key check (d_id like 'D%'),dname varchar(25),Dcity varchar(20) check (Dcity in('Anand','Baroda','Nadiad')),spec varchar(20) check (spec in ('ENT','Dental','Ortho','Eye')));

insert into doctor values
('D01','Dharmendra Patel','Anand','ENT'),
('D02','Jinay Shah','Nadiad','Eye'),
('D03','Sonal Patel','Anand','Dental'),
('D04','Mehul Patel','Anand','ENT'),
('D05','Mahesh Patel','Baroda','Ortho'),
('D06','Neerav Parmar','Nadiad','Dental'),
('D07','Niraj Shah','Anand','Ortho'),
('D08','Mukesh Kotiya','Baroda','Eye')


create table patient(P_id varchar(3) primary key check(P_id like 'P%'),
Pname varchar(25),
Bdate date check(Bdate<CONVERT(varchar,GETDATE(),13)),
Paddr varchar(35),
Gender char(1) check(Gender in ('F','M')) default upper('M')); 

--truncate table patient;
--drop table patient;

insert into patient values
('P01','Rupal Patel','12-sep-98','Anand','F'),
('P02','Kalpesh shah','04-sep-99','Baroda','M'),
('P03','Kavita Joshi','23-oct-87','Surat','F'),
('P04','Sachin Pandya','04-feb-89','Anand','M'),
('P05','Brijisha Patel','15-mar-95','Nadiad','F'),
('P06','Mayank Shah','16-may-65','Baroda','M'),
('P07','Mitul Soni','27-aug-96','Anand','M'),
('P08','Krunal Pandya','20-jan-70','Rajkot','M'),
('P09','rinkal Bhatt','14-apr-95','Nasari','M'),
('P10','Pratik Solanki','22-june-87 14:45:40:180','Surat','M');


select * from patient
select CONVERT(varchar,GETDATE(),13);


create table treatment(T_id nvarchar(3) primary key check(T_id like 'T%'),Tdetails nvarchar(50),Charges numeric(5) check(charges>0));

insert into treatment values
('T01','Retina',1200),
('T02','Root Canal',400),
('T03','Sleep Apnea',600),
('T04','Glaucoma',1500),
('T05','Tonsil',200),
('T06','knee Replacement',500),
('T07','Ear Infection',400),
('T08','Spine',600),
('T09','Tooth Extraction',1000);

select * from treatment;

create table appointment(A_id numeric(6) primary key,D_id varchar(3) references doctor(d_id) check (d_id like 'D%'),
P_id varchar(3) references patient(P_id) check(P_id like 'P%'),
T_id nvarchar(3) references treatment(T_id) check(T_id like 'T%'),
App_date date,
Duration numeric(4),
Status char(1) check(Status in('C','I')));

insert into appointment values
(201801,'D02','P01','T01','01-dec-18',20,'C'),
(201802,'D03','P02','T02','12-oct-18',35,'C'),
(201803,'D04','P03','T03','26-dec-18',30,'I'),
(201804,'D08','P04','T04','01-jan-18',25,'C'),
(201805,'D01','P05','T05','11-sep-18',40,'C'),
(201806,'D05','P06','T06','23-sep-18',45,'C'),
(201807,'D04','P07','T07','16-jan-18',55,'I'),
(201808,'D07','P08','T08','12-nov-18',40,'I'),
(201809,'D06','P09','T09','18-nov-18',35,'C'),
(201810,'D04','P10','T03','03-jul-18',30,'I'),
(201811,'D01','P04','T05','01-dec-18',50,'C'),
(201812,'D07','P07','T08','30-oct-18',25,'I');

select * from appointment;

select * from dept;
select * from emp;

select * from dept
inner join emp
on dept.deptno=emp.deptno and dept.dname='Accounting';


select * from dept
inner join emp
on dept.deptno=emp.deptno where dept.dname='Accounting';

select count(ename) from emp where deptno=10;

