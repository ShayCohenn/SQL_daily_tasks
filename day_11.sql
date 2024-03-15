-- Task 1:
SELECT f.film_id, title, length, name AS category,
ROUND(AVG(length) OVER(PARTITION BY name), 2) AS average_length
FROM film f
INNER JOIN film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c
ON fc.category_id = c.category_id
ORDER BY film_id ASC

-- Task 2:
SELECT *, 
COUNT(*) OVER(PARTITION BY customer_id),
SUM(amount) OVER(PARTITION BY customer_id)
FROM payment
ORDER BY payment_id ASC

-- Task 3:
SELECT flight_id, departure_airport,
SUM(actual_arrival - scheduled_arrival) OVER(ORDER BY flight_id)
FROM flights;

SELECT flight_id, departure_airport,
SUM(actual_arrival - scheduled_arrival) 
OVER(PARTITION BY departure_airport ORDER BY flight_id)
FROM flights;

-- Task 4:
SELECT * FROM 
(SELECT name, country, COUNT(*),
RANK() OVER(PARTITION BY country ORDER BY COUNT(*) DESC) AS rank
FROM customer_list cl
INNER JOIN payment p
ON id = customer_id
GROUP BY name, country) subQuery
WHERE rank <= 3

-- Task 5:
SELECT DATE(payment_date), SUM(amount),
LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)) AS previous_day,
SUM(amount) - LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)) AS difference,
ROUND((SUM(amount) - LAG(SUM(amount)) OVER (ORDER BY DATE(payment_date))) /
LAG(SUM(amount)) OVER (ORDER BY DATE(payment_date)) * 100, 2) AS percentage_difference
FROM payment
GROUP BY DATE(payment_date)