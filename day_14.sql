-- Task 1:
CREATE FUNCTION get_total_payments (firstN TEXT, lastN TEXT)
RETURNS decimal(6,2)
LANGUAGE plpgsql
AS
$$
DECLARE payment_count decimal(6,2);
BEGIN
SELECT SUM(amount) INTO payment_count FROM payment
NATURAL JOIN customer
WHERE first_name = firstN AND last_name = lastN;
RETURN payment_count;
END;
$$

-- Task 2:
BEGIN;

UPDATE employees
SET position_title = 'Head of Sales'
WHERE emp_id = 2;

UPDATE employees
SET salary = 12587.00
WHERE emp_id = 2;

UPDATE employees
SET position_title = 'Head of BI'
WHERE emp_id = 3;

UPDATE employees
SET salary = 14614.00
WHERE emp_id = 3;

COMMIT;

-- Task 3:
CREATE OR REPLACE PROCEDURE emp_swap (emp1 INT, emp2 INT)
LANGUAGE plpgsql
AS
$$
DECLARE
-- Create variables
salary1 DECIMAL(8,2);
salary2 DECIMAL(8,2);
position1 TEXT;
position2 TEXT;
BEGIN

-- Set values to the variables
SELECT salary INTO salary1
FROM employees WHERE emp_id = emp1;

SELECT salary INTO salary2
FROM employees WHERE emp_id = emp2;

SELECT position_title INTO position1
FROM employees WHERE emp_id = emp1;

SELECT position_title INTO position2
FROM employees WHERE emp_id = emp2;

-- Update the table
UPDATE employees
SET salary = salary2
WHERE emp_id = emp1;

UPDATE employees
SET salary = salary1
WHERE emp_id = emp2;

UPDATE employees
SET position_title = position2
WHERE emp_id = emp1;

UPDATE employees
SET position_title = position1
WHERE emp_id = emp2;

END;
$$

