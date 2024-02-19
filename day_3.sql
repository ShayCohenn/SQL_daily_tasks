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
