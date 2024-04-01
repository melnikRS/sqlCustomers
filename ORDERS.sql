create table ORDERS
(
id number identity, date date, customer_id number, product_name varcahr2(100 char), amount number, customer_id number
);
alter table ORDERS
	add constraint 001PK_ORDERS primary key (id)
	using index
	tablespace TST_IDX;
alter table ORDERS 
	add constraint 002FK_ORDERS_TO_CUSTOMERS foreign fey (customer_id)
	references CUSTOMERS (id)