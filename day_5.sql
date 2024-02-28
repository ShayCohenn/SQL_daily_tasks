-- Task 1:
SELECT
film_id,
ROUND(rental_rate / replacement_cost * 100, 2) AS percentage
FROM film 
WHERE rental_rate / replacement_cost <= 0.04
ORDER BY percentage ASC

-- Task 2:
SELECT
COUNT(*),
CASE
WHEN total_amount < 20000 THEN 'Low price tickets'
WHEN total_amount BETWEEN 20000 AND 150000 THEN 'Mid price tickets'
WHEN total_amount >= 150000 THEN 'High price tickets'
END AS ticket
FROM bookings
GROUP BY ticket
ORDER BY COUNT(*) DESC

-- Task 3:
SELECT
COUNT(*),
CASE
WHEN EXTRACT(month from scheduled_departure) IN (12,01,02) THEN 'Winter'
WHEN EXTRACT(month from scheduled_departure) IN (03,04,05) THEN 'Spring'
WHEN EXTRACT(month from scheduled_departure) IN (06,07,08) THEN 'June'
WHEN EXTRACT(month from scheduled_departure) IN (09,10,11) THEN 'Fall'
END AS seasons
FROM flights
GROUP BY seasons

-- Task 4:
SELECT
title,
CASE
WHEN rating = 'PG' OR rating = 'PG-13' AND length > 210 THEN 'Greate rating or long (tier 1)'
WHEN description ILIKE '%drama%' AND length > 90 THEN 'Long drama (tier 2)'
WHEN description ILIKE '%drama%' AND length <= 90 THEN 'Short drama (tier 3)'
WHEN rental_rate < 1 THEN 'Very cheap (tear 4)'
END AS tiers
FROM film
WHERE 
CASE
WHEN rating = 'PG' OR rating = 'PG-13' AND length > 210 THEN 'Greate rating or long (tier 1)'
WHEN description ILIKE '%drama%' AND length > 90 THEN 'Long drama (tier 2)'
WHEN description ILIKE '%drama%' AND length <= 90 THEN 'Short drama (tier 3)'
WHEN rental_rate < 1 THEN 'Very cheap (tear 4)'
END is not null

-- Task 5:
SELECT
SUM(CASE WHEN rating = 'G' THEN 1 ELSE 0 END) AS "G",
SUM(CASE WHEN rating = 'R' THEN 1 ELSE 0 END) AS "R",
SUM(CASE WHEN rating = 'NC-17' THEN 1 ELSE 0 END) AS "NC-17",
SUM(CASE WHEN rating = 'PG-13' THEN 1 ELSE 0 END) AS "PG-13",
SUM(CASE WHEN rating = 'PG' THEN 1 ELSE 0 END) AS "PG"
FROM film