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
									
/*
SELECT  customer_id, sum(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING sum(amount)> 110;
*/

/*
SELECT count(title) FROM film
WHERE title LIKE 'J%';
*/

/*
SELECT max(customer_id), first_name, last_name FROM customer
WHERE first_name LIKE 'E%'
AND  address_id <500
GROUP BY first_name, last_name
ORDER BY AVG(customer_id) DESC
LIMIT 1;
*/


/*
SELECT a.customer_id,
	   a.first_name,
	   a.last_name,
	   a.email,
	   b.amount,
	   b.payment_date
FROM customer AS a
INNER JOIN payment AS b
ON b.customer_id = a.customer_id
WHERE a.customer_id = 2
ORDER BY a.customer_id
*/

/*
SELECT a.payment_id,
	   a.amount,
	   b.first_name,
	   b.last_name	   
FROM payment AS a
INNER JOIN staff AS b
ON a.staff_id = b.staff_id;
*/

/*
SELECT a.store_id, b.title, count(b.title) FROM inventory AS a 
INNER JOIN film AS b 
ON a.film_id=b.film_id
GROUP BY b.title, a.store_id
ORDER BY a.store_id, b.title;
*/

/*  Model pentru extragerea timpului dintr-o coloana de tip timestamp
SELECT sum(amount) AS total, EXTRACT(MONTH FROM payment_date) AS MONTH 
FROM payment
GROUP BY MONTH
ORDER BY total DESC
LIMIT 1;
*/

/*
SELECT first_name || ' '||last_name AS name   
FROM customer;
*/
 

									
/*
SELECT title ,rental_rate 
FROM film
WHERE rental_rate > (SELECT avg(rental_rate)FROM film)
ORDER BY title;
*/

/*
SELECT film_id, title 
FROM film
 WHERE film_id IN (
 SELECT b.film_id
 FROM rental AS a
 INNER JOIN inventory AS b ON b.inventory_id=a.inventory_id
 WHERE a.rental_date BETWEEN '2005-05-29' AND '2005-05-30');
*/
