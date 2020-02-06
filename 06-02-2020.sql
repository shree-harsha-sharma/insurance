drop table users
drop table report
create table users
(
user_id int IDENTITY(1,1) PRIMARY KEY,
user_name varchar(20),
age int,
user_ph bigint,
user_mail varchar(30),
address varchar(50),
user_password varchar(20)
);

insert into users values('harsha',22,9108330206,'harsha@gmail.com','tumkur','harsha007')
select * from users

drop table policy
create table policy
(
policy_id int IDENTITY(100,1) PRIMARY KEY,
user_id int FOREIGN KEY REFERENCES users(user_id),
policy_type varchar(20),
user_age int,
policy_term int,
assured_amount int,
premium int,
maturity int,
)
insert into policy values(1,'endowment policy',22,15,100000,6666,165000)
select * from policy

create table report
(
policy_id int foreign key references policy(policy_id),
issue varchar(75),
description varchar(100),
status varchar(20)
)

insert into report values(100,'qwerty','qwerty','true')
select * from report

create table claimant
(
Policy_holder int foreign key references users(user_id),
policy_id int foreign key references policy(policy_id),
name varchar(20),
address varchar(40),
age int,
phone bigint
)

insert into claimant values(1,100,'qwerty','new york',22,0123456789)
select * from claimant

create table payment
(
payment_id int IDENTITY(1000,1) PRIMARY KEY,
user_id int foreign key references users(user_id),
payment_amount int,

policy_id int foreign key references policy(policy_id),
card_name varchar(20)
)
insert into payment values(1,10000,100,'harsha')
select * from payment

select * from users
select * from policy
select * from report
select * from claimant
select * from payment

drop table payment

