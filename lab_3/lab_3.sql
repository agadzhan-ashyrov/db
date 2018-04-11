show databases;
create 	database lab3_3;
use lab3_3;
show tables;
drop table if exists `client`;
CREATE TABLE IF NOT EXISTS `client` ( 
id_client INT(11) NOT NULL AUTO_INCREMENT, 
name VARCHAR(255) NOT NULL, 
passport_number VARCHAR(15) NOT NULL, 
PRIMARY KEY (`id_client`)) 
ENGINE = InnoDB 
DEFAULT CHARACTER SET = utf8;

drop table if exists reservation;
CREATE TABLE IF NOT EXISTS reservation ( 
id_reservation INT(11) NOT NULL AUTO_INCREMENT, 
id_client int(11) not null,
check_in date null default NULL, 
check_out date null default NULL, 
PRIMARY KEY (id_reservation)) 
ENGINE = InnoDB 
DEFAULT CHARACTER SET = utf8;
insert into reservation values (1,1,'12-04-15','31-12-12');

drop table if exists hotel_room;
CREATE TABLE IF NOT EXISTS hotel_room ( 
id_room INT(11) NOT NULL AUTO_INCREMENT, 
class varchar(255) NOT NULL, 
price float NOT NULL, 
PRIMARY KEY (id_room)) 
ENGINE = InnoDB 
DEFAULT CHARACTER SET = utf8;

drop table if exists room_in_reservation;
CREATE TABLE IF NOT EXISTS room_in_reservation ( 
id_room_in_reservation INT(11) NOT NULL AUTO_INCREMENT, 
id_reservation int(11) NOT NULL, 
id_room int(11) NOT NULL, 
PRIMARY KEY (id_room_in_reservation)) 
ENGINE = InnoDB 
DEFAULT CHARACTER SET = utf8;

ALTER TABLE reservation ADD id_client int(11) not null;

insert into client values(1, 'hasjd', 123125412);  
select * from client; 
insert into `client` (id_client, name, passport_number) values(3, 'gihad', 2372487);
select id_reservation, id_client from reservation;
insert into reservation(id_client) SELECT id_client FROM `client`;

delete  from `client` where id_client = 1;
SET SQL_SAFE_UPDATES = 0;
delete from `client`; 
truncate table `client`;

update client set name = 'agajan';
update client set name = 'gihad' where id_client = 3;
update client set name = 'agajan', passport_number = 103 where id_client = 3;

SELECT * from`client` ORDER BY passport_number ASC;
SELECT * from`client` ORDER BY passport_number DESC;
SELECT * from`client` ORDER BY id_client, passport_number;
SELECT * from`client` ORDER BY passport_number;

select min(passport_number) from `client`; 
select max(passport_number) from `client`; 
select avg(id_client) from `client`; 
select sum(id_client) from `client`; 

select passport_number, name, count(*) from client  group by name;
select passport_number, name, count(*) from client  group by name; /*having name = 'agajan';*/
