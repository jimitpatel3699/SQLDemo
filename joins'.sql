create database joins

use master

use joins;


create table emp(empid int primary key,empname varchar(max) not null,dept varchar(max) not null,salary int check (salary>0),managerid int references emp(empid));

insert into emp values
(101,'tejash','admin',20000,null),
(102,'ravi','dotnet',15000,101),
(103,'mehul','python',15000,101),
(104,'teja','dotnet',10000,102),
(105,'mansi','python',10000,103);

select * from emp;

select e.empname ,m.empname ,e.salary 
from emp e
inner join emp m 
on e.empid=m.managerid;

select e.empname ,m.empname,e.salary 
from emp e
inner join emp m 
on m.empid=e.managerid;

select e.empname employee,m.empname manager,e.salary 
from emp e,emp m 
where m.empid=e.managerid;

create table empdata(empid int primary key,empname varchar(max) not null,dept varchar(max) not null,salary int check (salary>0));

insert into empdata values
(101,'tejash','admin',20000),
(102,'ravi','dotnet',15000),
(103,'mehul','python',15000),
(104,'teja','dotnet',10000),
(105,'mansi','python',10000);

create table managerdata(empid int primary key,managerid int references empdata(empid) );



insert into managerdata values
(101,null),
(102,101),
(105,102),
(103,101),
(104,103);

select * from empdata;
select * from managerdata;

select empname managername,managerdata.empid
from empdata
inner join managerdata
on managerdata.managerid=empdata.empid;


create table demo(sid int,cid int,primary key(sid,cid));

insert into demo values
(104,101),
(103,101);

select * from demo;

create table demo2(did1 int primary key,did2 int);

create table demo3(did3 int references demo2(did1),did4 int references emp(empid),primary key(did3,did4));


select * from empdata;
select * from managerdata;
SELECT e.empname AS EmployeeName, 
       (SELECT empname FROM empdata WHERE empid = m.managerid) AS Manager 
FROM empdata e 
INNER JOIN managerdata m ON m.empid = e.empid 
WHERE m.managerid != m.empid;



select e.empname as EmployeeName from empdata e inner join managerdata m on m.managerid != m.empid and m.empid = e.empid

select empname as Manager from empdata inner join managerdata on managerdata.managerid = empdata.empid;

select e.empname as EmployeeName,empname as Manager from empdata e 
where e.empid In (select managerdata.managerid from empdata inner join managerdata on managerdata.managerid = empdata.empid)



\





select ed.empname as EmployeeName,ed.empname as Manager from empdata ed inner join managerdata md on ed.empid = md.managerid




