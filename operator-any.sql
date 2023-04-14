select max(salary) from emp where dept='marketing';
select empid,dept,salary as sal from emp where salary>any(select salary from emp where dept='marketing') ; 
