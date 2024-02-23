-- Task 1:
SELECT
MIN(replacement_cost),
MAX(replacement_cost),
ROUND(AVG(replacement_cost), 2) AS average,
SUM(replacement_cost)
FROM film

-- Task 2:
SELECT
staff_id,
COUNT(*)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC

SELECT
staff_id,
SUM(amount)
FROM payment
GROUP BY staff_id
ORDER BY SUM(amount) DESC

-- Task 3:
SELECT
staff_id,
DATE(payment_date),
SUM(amount)
FROM payment
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC LIMIT 1

-- Task 4:
SELECT
customer_id,
DATE(payment_date),
ROUND(AVG(amount), 2) AS average,
COUNT(*)
FROM payment
WHERE DATE(payment_date) BETWEEN
'2020-04-28' AND '2020-04-30'
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(*) > 1
ORDER BY average DESC
