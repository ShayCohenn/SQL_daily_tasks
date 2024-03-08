-- Task 1:
SELECT DISTINCT(replacement_cost) AS costs
FROM film
ORDER BY costs ASC

-- Task 2:
SELECT
CASE
WHEN replacement_cost BETWEEN 9.99 AND 19.99 THEN 'Low'
WHEN replacement_cost BETWEEN 20.00 AND 24.99 THEN 'Mid'
WHEN replacement_cost BETWEEN 25.00 AND 29.99 THEN 'High'
END AS price_category,
COUNT(*)
FROM film
GROUP BY price_category

-- Task 3:
SELECT title, length, name FROM film f
INNER JOIN film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c
ON fc.category_id = c.category_id
AND c.name IN ('Drama', 'Sports')
ORDER BY length DESC

-- Task 4:
SELECT COUNT(*), name FROM film f
INNER JOIN film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c
ON fc.category_id = c.category_id
GROUP BY name
ORDER BY COUNT(*) DESC

-- Task 5:
SELECT first_name, last_name, COUNT(*) FROM film f
INNER JOIN film_actor fa
ON f.film_id = fa.film_id
INNER JOIN actor a
ON fa.actor_id = a.actor_id
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC

-- Task 6:
SELECT COUNT(*) FROM address a
LEFT JOIN customer c
ON a.address_id = c.address_id
WHERE c.customer_id IS null

-- Task 7:
SELECT city, SUM(amount) FROM payment p
INNER JOIN customer c
ON p.customer_id = c.customer_id
INNER JOIN address a
ON c.address_id = a.address_id
INNER JOIN city
ON a.city_id = city.city_id
GROUP BY city
ORDER BY SUM(amount) DESC

-- Task 8:
SELECT city || ', ' || country, SUM(amount) FROM payment p
INNER JOIN customer c
ON p.customer_id = c.customer_id
INNER JOIN address a
ON c.address_id = a.address_id
INNER JOIN city ci
ON a.city_id = ci.city_id
INNER JOIN country co
ON ci.country_id = co.country_id
GROUP BY city || ', ' || country
ORDER BY SUM(amount) ASC

-- Task 9:
SELECT staff_id, ROUND(AVG(total), 2)
FROM (
SELECT SUM(amount) AS total, customer_id, staff_id
	FROM payment
	GROUP BY customer_id, staff_id
)
GROUP BY staff_id

-- Task 10:
SELECT 
ROUND(AVG(total), 2) AS Sunday_average
FROM 
	(SELECT
	 SUM(amount) as total,
	 DATE(payment_date),
	 EXTRACT(dow from payment_date) as weekday
	 FROM payment
	 WHERE EXTRACT(dow from payment_date)=0
	 GROUP BY DATE(payment_date),weekday)

-- Task 11:
SELECT title, length, replacement_cost
FROM film f1
WHERE length > (
SELECT AVG(length) FROM film f2
	WHERE f1.replacement_cost = f2.replacement_cost
)
ORDER BY length

-- Task 12:
SELECT ROUND(AVG(total), 2) AS average_spending, district FROM
(SELECT SUM(amount) AS total, district, p.customer_id FROM payment p
INNER JOIN customer c
ON p.customer_id = c.customer_id
INNER JOIN address a
ON c.address_id = a.address_id
GROUP BY p.customer_id, district
)
GROUP BY district
ORDER BY average_spending DESC

-- Task 13:
SELECT
title,
amount,
name,
payment_id,
(SELECT SUM(amount) FROM payment p1
INNER JOIN rental r1
ON r1.rental_id=p1.rental_id
INNER JOIN inventory i1
ON i1.inventory_id=r1.inventory_id
INNER JOIN film f1
ON f1.film_id=i1.film_id
INNER JOIN film_category fc1
ON fc1.film_id=f1.film_id
INNER JOIN category c1
ON c1.category_id=fc1.category_id
WHERE c1.name=c.name)
FROM payment p
INNER JOIN rental r
ON r.rental_id=p.rental_id
INNER JOIN inventory i
ON i.inventory_id=r.inventory_id
INNER JOIN film f
ON f.film_id=i.film_id
INNER JOIN film_category fc
ON fc.film_id=f.film_id
INNER JOIN category c
ON c.category_id=fc.category_id
ORDER BY name