-- Task 1:
SELECT
COUNT(*) AS no_of_movies
FROM film
WHERE description LIKE '%Saga%' AND
(title LIKE 'A%' OR title LIKE '%R')

-- Task 2:
SELECT * FROM customer
WHERE first_name LIKE '%ER%' 
AND first_name LIKE '_A%'
ORDER BY last_name DESC

-- Task 3:
SELECT COUNT(*)
FROM payment
WHERE amount = 0 OR (
amount BETWEEN 3.99 AND 7.99
AND payment_date = '2020-05-01')