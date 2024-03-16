-- Task 1:
SELECT
staff_id,
first_name,
last_name,
SUM(amount)
FROM payment p
INNER JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY GROUPING SETS(
(first_name, last_name), (first_name, last_name, staff_id)
)

-- Task 2:
SELECT 
'Quater ' || TO_CHAR(book_date, 'Q'),
TO_CHAR(book_date, 'Mon') AS month,
TO_CHAR(book_date, 'W') AS week_in_month,
DATE(book_date),
SUM(total_amount)
FROM bookings
GROUP BY ROLLUP(
'Quater ' || TO_CHAR(book_date, 'Q'),
TO_CHAR(book_date, 'Mon'),
TO_CHAR(book_date, 'W'),
DATE(book_date)
)
ORDER BY 1,2,3,4

-- Task 3:
SELECT
p.customer_id,
DATE(payment_date),
title,
SUM(amount) AS total
FROM payment p 
INNER JOIN rental r
ON r.rental_id = p.rental_id
INNER JOIN inventory i
ON i.inventory_id = r.inventory_id
INNER JOIN film f
ON f.film_id = i.film_id
GROUP BY CUBE(
p.customer_id,
DATE(payment_date),
title
)
ORDER BY 1,2,3

-- Task 4:
SELECT f1.title, f2.title, f2.length
FROM film f1
INNER JOIN film f2
ON f1.length = f2.length
AND f1.title != f2.title
ORDER BY length DESC

