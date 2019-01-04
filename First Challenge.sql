									--FIRST Challenge

--select * from film
--order by film_id asc
--limit 5;

--select * from payment;

--select count(amount) from payment
--where amount>5;

--SELECT count(*) FROM actor
--WHERE first_name LIKE 'P%';

--SELECT count (DISTINCT(district)) FROM address;

--SELECT DISTINCT(district) FROM address;

/*
SELECT count(*) FROM film
WHERE rating ='R'
AND replacement_cost BETWEEN 5 AND 15;
*/

/*
SELECT count(*) FROM film
WHERE title LIKE '%Truman%';
*/
									
/*
SELECT staff_id, count(amount), sum(amount) FROM payment
GROUP BY staff_id
ORDER BY sum(amount) DESC;
*/

/*
SELECT rating, avg(replacement_cost) FROM film
GROUP BY rating;
*/

/*
SELECT customer_id, sum(amount) FROM payment
GROUP BY customer_id
ORDER BY sum(amount) DESC
LIMIT 5;
*/		
									
/*
SELECT customer_id, count(amount) 
FROM payment
GROUP BY customer_id
HAVING count(amount)>=40
ORDER BY count(amount) ASC;
*/

/*
SELECT rating, avg(rental_duration) 
FROM film
GROUP BY rating
HAVING avg(rental_duration)>5
*/