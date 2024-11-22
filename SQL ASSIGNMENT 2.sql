create database sales;
use sales;
create table orders
(oder_id int(10) primary key AUTO_INCREMENT,
customer_name varchar(50) not null,
product_category varchar(50)unique,
ordered_item varchar(50) not null,
contact_no int(10) not null
);
select*from orders;

-- add a new coloumn named "oredrs quantity" to the orders table--
alter table orders
add order_quantity int(50) not null;
-- rename the orders table into sales_orders_table--
alter table orders
rename to sales_order_table;
select*from sales_order_table;
-- insert 10 rows into sales_order_table--
insert into sales_order_table(customer_name,product_category,ordered_item, contact_no,order_quantity)
VALUE
('rama','clothing','saree','227870','1'),
('shaju','electronics','bulb','224587','2'),
('farhan','furniture','table','956254','3'),
('dhruv','schoo_items','pen','62827425','4'),
('rajesh','cosmetics','face wash','62821478','5'),
('suhail','sports','football','224578','6'),
('amar','food items','burger','913257','7'),
('aleena','meachinery','driller','2245787','8'),
('roopa','stationary','bag','421564','9'),
('dhanajay','foot wear','boots','548754','10')
;
select*from sales_order_table;
-- retrieve customer_name and ordered_item from sales order_table--
use sales;
select customer_name,ordered_item from sales_order_table;
-- use the update command to change the name of the product for any row--
update sales_order_table
set customer_name='ramu'
where oder_id ='43';
-- delete sales_orders from the database---
drop table sales_order_table;