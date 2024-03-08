-- Task 1:
SELECT * FROM film 
WHERE length > (SELECT AVG(length) FROM film)

-- Task 2:
SELECT * FROM film
WHERE film_id IN 
(SELECT film_id FROM inventory 
WHERE store_id = 2 GROUP BY film_id
HAVING COUNT(*) > 3)

-- Task 3:
SELECT first_name, last_name FROM customer
WHERE customer_id IN 
(SELECT customer_id FROM payment WHERE DATE(payment_date) = '2020-01-25')

-- Task 4:
SELECT first_name, email FROM customer
WHERE customer_id IN
(SELECT customer_id FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 30)

-- Task 5:
SELECT first_name, last_name FROM customer
WHERE address_id IN 
(SELECT address_id FROM address 
WHERE district = 'California')
AND customer_id IN
(SELECT customer_id FROM payment 
GROUP BY customer_id HAVING SUM(amount) > 100)

-- Task 6:
SELECT ROUND(AVG(total), 2) FROM 
(SELECT DATE(payment_date), SUM(amount) AS total FROM payment
GROUP BY DATE(payment_date))

-- Task 7:
SELECT *, 
(SELECT MAX(amount) FROM payment) - amount AS difference
FROM payment

-- Task 8:
SELECT film_id, title, replacement_cost, rating 
FROM film f1
WHERE replacement_cost = (
SELECT MIN(replacement_cost) FROM film f2
WHERE f1.rating = f2.rating)

-- Task 9:
SELECT film_id, title, length, rating 
FROM film f1
WHERE length = (
SELECT MAX(length) FROM film f2
WHERE f1.rating = f2.rating)

-- Task 10:
SELECT customer_id, amount,
(SELECT SUM(amount) FROM payment p2
WHERE p1.customer_id = p2.customer_id),
(SELECT COUNT(*) FROM payment p2
WHERE p1.customer_id = p2.customer_id)
FROM payment p1
ORDER BY customer_id 

-- Task 11:
SELECT *,
(SELECT ROUND(AVG(replacement_cost), 2) FROM film f2
WHERE f2.rating = f1.rating)
FROM film f1
WHERE replacement_cost =
(SELECT MAX(replacement_cost) 
FROM film f3 
WHERE f3.rating = f1.rating)

-- Task 12:
SELECT payment_id, p1.customer_id, first_name, amount
FROM payment p1
INNER JOIN customer c1
ON c1.customer_id = p1.customer_id
WHERE amount =
(SELECT MAX(amount) FROM payment p2
WHERE p1.customer_id = p2.customer_id)