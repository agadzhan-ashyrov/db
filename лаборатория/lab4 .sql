#lab4
select reservation.id_client, `client`.id_client
from `client`
left join reservation on  `client`.id_client = reservation.id_client
where `client`.id_client < 10;

select reservation.id_client, `client`.id_client
from reservation
right join `client` on `client`.id_client = reservation.id_client
where `client`.id_client < 10;

select reservation.id_client, `client`.id_client
from `client`
left join reservation on  `client`.id_client = reservation.id_client
where `client`.id_client < 10 and `client`.name like 'a%';

select reservation.id_client, `client`.id_client
from `client`
left join reservation on  `client`.id_client = reservation.id_client
where `client`.id_client < 10 and  reservation.id_reservation < 10;



select `client`.passport_number, room_in_reservation.id_room, reservation.id_reservation 
from reservation
left join `client` on `client`.id_client = reservation.id_client 
left join  room_in_reservation on reservation.id_reservation = room_in_reservation.id_reservation
where `client`.name like 'a%' and
reservation.id_reservation < 10 and
room_in_reservation.id_room < 5;
 
