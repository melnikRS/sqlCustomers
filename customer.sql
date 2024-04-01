reate table CUSTOMERS
(
id number identity, name varchar2(100 char), surname(100 char), age number, phone_number number
);
alter table CUSTOMERS
	add constraint 001PK_CUSTOMERS primary key (id)
	using index
	tablespace TST_IDX;