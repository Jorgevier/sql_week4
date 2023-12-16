-- Week 5 - Monday Questions

-- 1. How many actors are there with the last name ‘Wahlberg’? ***

SELECT * 
FROM actor
WHERE last_name like '_ahl%';


--ANSWER IS 2


-- 2. How many payments were made between $3.99 and $5.99? ***


SELECT *
FROM payment
WHERE amount BETWEEN 3.99 AND 450;  

-- THERE IS ZERO PAYMENTS FROM $3.99 and $5.99,
-- SO I PUT IT AT MAX 450 AND
-- I GET 32 PAYEMENTS



-- 3. What film does the store have the most of? (search in inventory)





-- 4. How many customers have the last name ‘William’? ***

SELECT * 
FROM customer
WHERE last_name like '_illiam%';

-- NONE BUT WE HAVE 1 WILLIAMS WITH AN S AT THE END


-- 5. What store employee (get the id) sold the most rentals?***


select staff_id, count(rental_id)
from rental
group by staff_id
order by staff_id

--staff id 1 sold the most at 8040



-- 6. How many different district names are there?***
SELECT district
FROM address;

--603 districts



-- 7. What film has the most actors in it? (use film_actor table and get film_id)***



select  film_id, count(actor_id)
from film_actor
group by film_id
order by count DESC;


-- film  508 has the most actors at 15 


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)***

SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es%' and store_id = 1;

-- there are 15 with ES in it


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers ***
-- with ids between 380 and 430? (use group by and having > 250)

SELECT amount, count(amount)
from payment
where customer_id BETWEEN 380 and 430 
group by amount
having count(amount) > 250

-- 3 payements with those requirements


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?


select rating
from film


group by staff_id
order by staff_id

