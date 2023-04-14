insert into emp(empid,dept,empname) values(116,'hr','z');

select * from emp;

select ISNull(salary,20000) from emp;

select * from emp where UNIQUE select empid,salary from emp where empname like '%';

select distinct salary from emp;
select UNIQUE salary  from emp;

use master

use jimmy;

SHOW DATABASES

SELECT * FROM emp
WHERE LIMIT 3;

SELECT TOP 3 * FROM emp;

select * from emp order by dept desc,salary,empid;
select * from emp order by dept desc;

select empname,sum(salary) from emp where dept ='hr' group by empname;

select distinct empname,sum(salary) from emp;

Select round(5.499,0);

select year('2015-02-12');

select GETDATE()
SELECT CONVERT(VARCHAR(19),GETDATE()) 

alter table emp alter column empname varchar(20) ;

alter table emp add default 20000.00 for salary;


alter table emp add constraint empname unique(empname);

update emp set empname='m' where empid between 113 and 113;

alter table emp add constraint salary check(salary>0);

alter table emp add constraint deptcheck check(dept in('hr','sales','admin','marketing','it','development'));

create table empnew2(empid varchar(20),salary varchar(20) );

truncate table empnew;
drop table empnew2;
alter table empnew2 alter column salary varchar(20) not null  ;
alter table empnew2 add constraint pkey primary key(salary,empid);
alter table empnew drop constraint pkey

create table empnew2(id int primary key,salary int,year date,empid varchar(20) references emp(empid));

insert into empnew2 values(1,20000,'2011','110');
select * from empnew;
alter table empnew add constraint fkry foreign key(empid) references empnew2;


CREATE TABLE Musician (
MusicianId int NOT NULL,
FirstName varchar(60),
LastName varchar(60),
CONSTRAINT PK_Musician PRIMARY KEY (MusicianID)
);

CREATE TABLE Band (
BandId int NOT NULL,
BandName varchar(255),
CONSTRAINT PK_Band PRIMARY KEY (BandId)
);

CREATE TABLE BandMember (
MusicianId int NOT NULL,
BandId int NOT NULL,
CONSTRAINT PK_BandMember PRIMARY KEY (MusicianID, BandId),
CONSTRAINT FK_BandMember_Band FOREIGN KEY (BandId) REFERENCES Band(BandId),
CONSTRAINT FK_BandMember_Musician FOREIGN KEY (MusicianId) REFERENCES Musician(MusicianId)
);

CREATE TABLE MembershipPeriod (
MembershipPeriodId int NOT NULL,
MusicianId int NOT NULL,
BandId int NOT NULL,
StartDate date NOT NULL,
EndDate date NULL,
CONSTRAINT PK_MembershipPeriod PRIMARY KEY (MembershipPeriodID),
CONSTRAINT FK_MembershipPeriod_BandMember FOREIGN KEY (MusicianID, BandId) REFERENCES BandMember(MusicianID, BandId)
);