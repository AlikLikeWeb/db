-- select one row
SELECT name FROM users;

--select two rows
SELECT name, phone FROM users;

--JOIN operand 
SELECT users.id, fing.fingName
FROM users
JOIN finger ON users.id=finger.fingName;

--4 
-- FULL JOIN returns all data from tables
SELECT users.id, finger.fingName
FROM users
FULL JOIN finger ON users.id=finger.fingName;


--5
--select from finger where price between 100 and 500
SELECT *
FROM finger
WHERE fingPrice > 100 AND fingPrice < 500

--6
-- select fing by user
SELECT finger t
     FROM users u 
        WHERE u.users_id = t.id
        
        
--7
-- top 10 expensive finger
SELECT ТОР 10 finger.fingName, finger.fingPrice
FROM finger
ORDER BY finger.fingPrice DESC;
        
        
       
--8
--BETWEEN operand 
  SELECT * 
    FROM finger  
    WHERE fingPrice  BETWEEN "20" AND "100";

--9
--compare 2 fields from 2 tables
SELECT fingName, fingDesc
FROM finger
UNION ALL
SELECT name, phone
FROM users

--10 
--Всі записи з правої таблиці, якщо в правій таблиці немає відповідного рядка для лівої таблиці, то в відповідних рядках будуть пусті значення.
SELECT users.name, users.id, finger.fingName
FROM users
RIGHT JOIN finger ON users.name=finger.fingName;
;