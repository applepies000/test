show databases;
use mysql;
select * from products;
show columns from customers;
show columns from products;
select prod_name from products limit 5,6;
select prod_id,prod_name,prod_price from products where prod_price <=10;
select distinct vend_id from products;
select prod_price from products where prod_price in (0,10);
select prod_name from products where prod_name regexp '[[:digit:]]';
select now();
select vend_id,count(*) as num_prods from products group by vend_id with rollup;
select vend_id from products;
select cust_id,count(*) as orders from orders group by cust_id having count(*)>=2;
show columns from orderitems;
select vend_id,count(*) as prod_total from products where prod_price>=10 group by vend_id having count(*)>=2; 
select * from orders;
select * from customers; 
select cust_id,cust_name, (
select count(*) from orders 
where orders.cust_id=customers.cust_id) as orders
from customers;
select * from orderitems;   
select cust_name,prod_id from customers,orders,orderitems
where 
prod_id='tnt2' and orderitems.order_num=orders.order_num 
and orders.cust_id=customers.cust_id; 
select vend_country as vend_title from vendors;
select vend_title from vendors;
select products.prod_id,products.prod_name from products 
where products.vend_id=products.vend_id and products.prod_id='dtntr';