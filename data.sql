create database insurance 

use insurance

create table users
(
user_id int IDENTITY(1,1) PRIMARY KEY,
user_name varchar(20),
user_ph varchar(20),
user_mail varchar(20),
user_password varchar(20)
);

insert into users values('qwerty','123456','assqwd@da','qwerty');

select * from users