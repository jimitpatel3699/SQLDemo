insert into product(productid,productname,producttype) values (1,'s','l');

delete from product where productid =1;

insert into product(productid,productname,producttype) values (1,'sony barvia','led');
insert into product(productid,productname,producttype) values (2,'phillips toaster','toaster');
insert into product(productid,productname,producttype) values (3,'bpl','led');
insert into product(productid,productname,producttype) values (4,'split AC','AC');
insert into product(productid,productname,producttype) values (5,'Windows AC','AC');
insert into product(productid,productname,producttype) values (6,'ddl gyser','gas gyser');
insert into product(productid,productname,producttype) values (7,'bpl iron','iron');
insert into product(productid,productname,producttype) values (8,'heater','water heater');
insert into product(productid,productname,producttype) values (9,'croma tv','led');


update product set productid=10 where productid=9;

select * from product;