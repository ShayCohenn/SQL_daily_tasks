-- Task 1:
SELECT COUNT(*), fare_conditions FROM seats
INNER JOIN boarding_passes
ON seats.seat_no = boarding_passes.seat_no
GROUP BY fare_conditions
ORDER BY COUNT(*) DESC

-- Task 2:
SELECT COUNT(*) FROM tickets
FULL OUTER JOIN boarding_passes
ON tickets.ticket_no = boarding_passes.ticket_no
WHERE boarding_passes.ticket_no IS null

-- Tast 3:
SELECT * FROM aircrafts_data a
LEFT JOIN flights
ON a.aircraft_code = flights.aircraft_code
WHERE flights.flight_id IS null

-- Task 4:
SELECT seats.seat_no, COUNT(*) FROM seats
LEFT JOIN boarding_passes passes
ON seats.seat_no = passes.seat_no
GROUP BY seats.seat_no
ORDER BY COUNT(*) DESC

-- Task 5:
SELECT RIGHT(seats.seat_no, 1) AS line, COUNT(*) FROM seats
LEFT JOIN boarding_passes passes
ON seats.seat_no = passes.seat_no
GROUP BY line
ORDER BY COUNT(*) DESC

-- Task 6:
SELECT first_name, last_name, phone, district FROM customer c
INNER JOIN address a
ON c.address_id = a.address_id
WHERE district = 'Texas'

-- Task 7:
SELECT * FROM address a 
FULL OUTER JOIN customer c
ON a.address_id = c.address_id
WHERE customer_id IS null

-- Task 8:
SELECT first_name, last_name, email, country FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON city.city_id = address.city_id
INNER JOIN country
ON country.country_id = city.country_id
AND country = 'Brazil'

-- Task 9:
SELECT passenger_name, SUM(total_amount) FROM tickets t
INNER JOIN bookings b
ON t.book_ref = b.book_ref
GROUP BY 1
ORDER BY 2 DESC

-- Task 10:
SELECT COUNT(*), fare_conditions FROM tickets t
INNER JOIN ticket_flights tf
ON t.ticket_no = tf.ticket_no
AND passenger_name = 'ALEKSANDR IVANOV'
GROUP BY 2
ORDER BY 1 DESC

-- Task 11:
SELECT first_name || ' ' || last_name AS name, COUNT(*), title FROM customer c
INNER JOIN rental r
ON c.customer_id = r.customer_id
AND c.first_name = 'GEORGE'
AND c.last_name = 'LINTON'
INNER JOIN inventory i
ON r.inventory_id = i.inventory_id
INNER JOIN film f
ON i.film_id = f.film_id
GROUP BY 1, 3
ORDER BY 2 DESC