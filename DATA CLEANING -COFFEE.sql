create database coffee_database;
select count(*)from coffee_shop_sales;
describe coffee_shop_sales

UPDATE coffee_shop_sales
set transaction_date = str_to_date(transaction_date,'%d-%m-%Y');

alter table coffee_shop_sales
modify column transaction_date DATE;

DESCRIBE coffee_shop_sales;

UPDATE coffee_shop_sales
SET transaction_time = str_to_date(transaction_time,'%H:%i:%s');

alter table coffee_shop_sales
modify column transaction_time Time;

DESCRIBE coffee_shop_sales;

alter table coffee_shop_sales
change column ï»¿transaction_id transaction_id int;

