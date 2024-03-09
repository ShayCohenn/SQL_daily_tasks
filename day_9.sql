-- Task 1:
CREATE TABLE online_sales(
transaction_id SERIAL PRIMARY KEY,
customer_id INT REFERENCES customer(customer_id),
film_id INT REFERENCES film(film_id),
amount NUMERIC(5,2) NOT NULL CHECK (amount >= 0.00 AND amount <= 999.99),
promotion_code VARCHAR(10) DEFAULT 'None'
)

-- Task 2:
INSERT INTO online_sales
(customer_id, film_id, amount, promotion_code)
VALUES (124,65,14.99,'PROMO2022'), (225,231,12.99,'JULYPROMO'), (119,59,15.99,'SUMMERDEAL')

-- Task 3:
ALTER TABLE director
ALTER COLUMN director_account_name TYPE VARCHAR(30),
ALTER COLUMN last_name DROP DEFAULT,
ALTER COLUMN last_name SET NOT NULL,
ADD COLUMN email VARCHAR(40)

ALTER TABLE director
RENAME director_account_name TO account_name

ALTER TABLE director
RENAME TO directors

-- Task 4:
CREATE TABLE songs (
    song_id SERIAL PRIMARY KEY,
    song_name VARCHAR NOT NULL,
    genre VARCHAR DEFAULT 'Not defined',
    price NUMERIC CHECK (price >= 0.99) DEFAULT 0.99,
    release_date DATE CHECK (release_date BETWEEN '1950-01-01' AND CURRENT_DATE)
)