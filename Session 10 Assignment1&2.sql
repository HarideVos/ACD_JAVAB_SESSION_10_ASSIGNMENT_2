-- Assignment 1
-- 1
CREATE DATABASE Bank1012;
USE Bank1012;
-- 2 a, b, c
CREATE TABLE Customer (
C_ID VARCHAR(10) PRIMARY KEY, 
CNAME VARCHAR(20) NOT NULL, 
MNO INT, 
ADDRESS VARCHAR(30), 
CITY VARCHAR(10)
);
-- 2 d i and ii
alter table Customer add column DOB date;
alter table Customer modify ADDRESS VARCHAR(20);

-- Assignment 2
-- 1 a, b, c
insert into Customer (C_ID, CNAME, MNO, ADDRESS, CITY, DOB)
values ('C1', 'Ankur', 838289, 'Domlur', 'Bangalore',
'1990-09-11');
insert into Customer (C_ID, CNAME, MNO, ADDRESS, CITY, DOB)
values ('C2', 'John', 89849, 'Vaishali', 'Jaipur', 
'1992-10-10');
insert into Customer (C_ID, CNAME, MNO, ADDRESS, CITY, DOB)
values  ('C3','Raman', 888950, 'Marathali', 'bangalore', 
'1987-8-15');

-- 1 d, e
update Customer set CITY='Jaipur' where C_ID='C2';
delete from Customer where C_ID='C3';

-- 2
CREATE TABLE Account (
ACCT_NO VARCHAR(10) PRIMARY KEY, 
C_ID VARCHAR(10), 
TYPE ENUM ('Savings', 'Checking'),
Balance INT,
foreign key (C_ID) references Customer (C_ID)
);

insert into Account (ACCT_NO, C_ID, TYPE, Balance) 
values ('CA1', 'C1', 'Savings', 50000);
insert into Account (ACCT_NO, C_ID, TYPE, Balance) 
values ('CA2', 'C1', 'Savings', 10000)


