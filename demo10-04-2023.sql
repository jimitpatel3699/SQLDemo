select salary,empid from emp where dept='marketing'
select salary from emp where dept='marketing';

select max(empid) from emp;

select empid from emp where empid in (select max(empid) from emp where salary>20000);