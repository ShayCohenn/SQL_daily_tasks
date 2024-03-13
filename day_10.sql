-- Task 1:
UPDATE film
SET rental_rate = 1.99
WHERE rental_rate = 0.99

-- Task 2:
ALTER TABLE customer
ADD COLUMN initials VARCHAR(4);

UPDATE customer
SET initials = 
LEFT(first_name,1) || '.' || LEFT(last_name,1) || '.';

-- Task 3:
DELETE FROM payment
WHERE payment_id IN (17064, 17067)
RETURNING payment_id    

-- Task 4:
CREATE TABLE customer_spendings AS 
SELECT 
first_name || ' ' || last_name AS name,
SUM(amount) AS total
FROM payment p
INNER JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY name

-- Task 5:
CREATE VIEW films_category AS  
SELECT
title,
length,
name AS category
FROM film f
INNER JOIN film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c
ON fc.category_id = c.category_id
ORDER BY length DESC

-- Task 6:
-- 1
ALTER VIEW v_customer_info 
RENAME TO v_customer_information;

-- 2
ALTER VIEW v_customer_information 
RENAME COLUMN customer_id TO c_id;

-- 3
CREATE OR REPLACE VIEW v_customer_information
AS
SELECT 
    cu.customer_id as c_id,
    cu.first_name || ' ' || cu.last_name AS name,
    a.address,
    a.postal_code,
    a.phone,
    city.city,
    country.country,
    CONCAT(LEFT(cu.first_name,1),LEFT(cu.last_name,1)) as initials
FROM customer cu
JOIN address a ON cu.address_id = a.address_id
JOIN city ON a.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
ORDER BY c_id