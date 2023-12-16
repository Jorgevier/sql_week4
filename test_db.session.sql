--this a coment


SELECT * 
FROM actor;

SELECT first_name, last_name
FROM actor;

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Bob';



SELECT * 
FROM payment;


SELECT customer_id, amount
from payment
where amount < 0;

SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2 AND 200
ORDER BY amount DESC; --FOR DESCENDING ORDER  ASC IS FOR ASCENDING


SELECT customer_id, amount
from payment
where amount > 200 or amount< -400;

SELECT * 
FROM payment

SELECT *
FROM payment
WHERE amount > 200
ORDER BY amount

SELECT * FROM customer
