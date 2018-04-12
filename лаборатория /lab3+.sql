SELECT * from`client` ORDER BY passport_number ASC;
SELECT * from`client` ORDER BY passport_number DESC;
SELECT * from`client` ORDER BY id_client, passport_number;
SELECT * from`client` ORDER BY passport_number;

select min(passport_number) from `client`; 
select max(passport_number) from `client`; 
select avg(id_client) from `client`; 
select sum(id_client) from `client`; 

select  name, count(*) from client  group by name;
select  name, count(*),passport_number from client  group by name having name = 'agajan';
