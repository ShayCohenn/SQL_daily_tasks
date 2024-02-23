-- Task 1:
SELECT
EXTRACT(month from payment_date) as months,
SUM(amount)
FROM payment
GROUP BY months
ORDER BY SUM(amount) DESC
LIMIT 5

-- Task 2:
SELECT
RIGHT(email, 5)
FROM customer

-- Task 3:
SELECT
LEFT(email,1) || '***@sakilacustomer.org'
FROM customer

-- Task 4:
SELECT
email,
last_name || ', ' ||
LEFT(email, POSITION('.' IN email) - 1)
FROM customer

-- Task 5:
SELECT
LEFT(email, 1) || '***' ||
SUBSTRING(email from POSITION('.' in email) for 2)
|| '***' ||
SUBSTRING(email from POSITION('@' in email))
FROM customer

SELECT
'***' ||
SUBSTRING(email from POSITION('.' in email) - 1 for 3)
|| '***' ||
SUBSTRING(email from POSITION('@' in email))
FROM customer

-- Task 6:
SELECT
SUM(amount),
EXTRACT(month from payment_date) AS date
FROM payment
GROUP BY date
ORDER BY SUM(amount) DESC

SELECT
SUM(amount),
EXTRACT(dow from payment_date) AS day_of_week
FROM payment
GROUP BY day_of_week
ORDER BY SUM(amount)

SELECT
customer_id,
SUM(amount),
EXTRACT(week from payment_date) AS week
FROM payment
GROUP BY week, customer_id
ORDER BY SUM(amount) DESC

-- Task 7:
SELECT
SUM(amount),
TO_CHAR(payment_date, 'Dy, DD/MM/YYYY') date1
FROM payment
GROUP BY date1
ORDER BY SUM(amount)

SELECT
SUM(amount),
TO_CHAR(payment_date, 'Mon, YYYY') date2
FROM payment
GROUP BY date2
ORDER BY SUM(amount)

SELECT
SUM(amount),
TO_CHAR(payment_date, 'Dy, HH24:MM') date3
FROM payment
GROUP BY date3
ORDER BY SUM(amount)

-- Task 8:
SELECT
customer_id,
return_date - rental_date AS duration
FROM rental
WHERE customer_id = 35

SELECT
customer_id,
AVG(return_date - rental_date) AS average
FROM rental
GROUP BY customer_id
ORDER BY average DESC LIMIT 1