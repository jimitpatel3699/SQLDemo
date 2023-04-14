create table dept(dno int,dname text);
create table empnew(empname text,dno int);

insert into dept values(10,'acc'),(20,'sales'),(30,'ope'),(40,'r&d');
insert into empnew values('jimit',10),('saurabh',10),('aakash',20),('jay',30);


select * from dept;
select * from empnew;

select * from dept
inner join empnew
on dept.dno=empnew.dno;