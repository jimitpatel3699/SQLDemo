select * from emp;


select e1.empid,e1.empname,e1.dept,e2.empname Managername from emp e1
inner join emp e2
on e2.empid = e1.managerid;

select * from emp e1
inner join emp e2
on e2.empid = e1.managerid;