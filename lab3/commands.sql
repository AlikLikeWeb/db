--1
--clients whom jewel is ready

select * from clients 
join progress on clients.id=progress.client_id where status=true

--2
--emails and phone numbers of clients who are gave their order to the first jeweler

select email, phone, jeweler_id from clients
join jewelers on clients.jeweler_id=jewelers.id where jeweler_id=1

--3
--amount of clients who are gave their orders to jewelers whom have 3 clients
select count(*)
from clients
join jewelers on clients.jeweler_id = jewelers.id where clients = 3

--4
--amount of clients with same jeweler
select jeweler_id,count(*) as Amount_of_clients 
from clients 
group by clients.jeweler_id order by Amount_of_clients

--5
--full names, emails and id of jewelers of clients whom size is S
select full_name, email, jeweler_id
from clients
where size='S'

--6
--change name of client by email
update clients 
set full_name = 'Renamed User' where email = 'danslow0@wikimedia.org'

--7
--amount of clients who are have M or L size
select count(*)
from clients
where size = 'M' or size = 'L'

--8
--names of jewelers of clients who are have M or L size
select jewelers.full_name
from clients
join jewelers on clients.jeweler_id = jewelers.id where clients.size = 'M' or clients.size = 'L'

--9
--change status of order progress
update progress
set status = true where client_id=8 or client_id=36

--10
--full name of jeweler whom profession is necklaces
select jewelers.full_name
from jewelers
join profession on jewelers.id=profession.jeweler_id where profession.name='Necklace'