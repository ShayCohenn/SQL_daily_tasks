<details>

<summary>

## Day 1:
</summary>

### 1. Create a list of all the distinct districts customers are from
### 2. What is the latest rental date?
### 3. How many films does the company have?
### 4. How many distinct last names of the customers are there
</details>

<details>

<summary>

## Day 2:
</summary>

### 1. How many movies are there that contain 'Saga' in the description and where the title starts either with 'A' or ends with 'R'? Use the alias 'no_of_movies'
### 2. Create a list of all customers where the first name contains 'ER' and has an 'A' as the second letter. Order the results by the last name descendingly.
### 3. How many payments are there where the amount is either 0 or is between 3.99 and 7.99 and in the same time has happened on 2020-05-01.
</details>

<details>

<summary>

## Day 3:
</summary>

### 1. Write a query to get the Minimum, Maximum, Average, and Sum of the replacement cost of the films.
### 2. Which employee is responsible for more payments? Which employee is responsible for a higher overall payment amount?
### 3. Which employee had the highest sales amount in a single day?
### 4. Find out the average payment ammount grouped by customer and day - consider only the days/customers with more than 1 payment (per customer per day) in April 28, 29 and 30 - 2020. Order the amount in a descending order.
</details>

<details>

<summary>

## Day 4:
</summary>

### 1. Find all customers with first or last name with more than 10 characters, output all in lowercase.
### 2. Exctract the last 5 charecters of the email address
### 3. You need to create an anonymized version of the email addresses "MARY.SMITH@sakilacustomer.org" → "M***@sakilacustomer.org"
### 4. Extract the first name from the email address and concat it with the last name. It should in the form: "Last name, First name"
### 5. Create an anonymized version of the email addresses in the following ways: "M***.S***@sakilacustomer.org" and "***Y.S***@sakilacustom"
### 6. Analyze the payments and find out the following:
• What's the month with  the highest total payment amount<br>
• What's the day of week with the highest total payment amount?(0 is sunday)<br>
• What's the highest amount one customer has spent in a week?
### 7. Sum the payments and group them in the following formats: day: Fri, 24/01/2020 | May, 2020 | Thu, 02:44
### 8. Create a list of all rental durations of customer with id 35. Also find which customer has the longest average rental duration
</details>

<details>
<summary>

## Day 5:
</summary>

### 1. Create a list of films with the relation of rental rate / replacement cost where the rental rate is less than 4% of the replacement cost. Create a list of those film_ids together with the percentage rounded to 2 decimal places
### 2. How many tickets were sold in the following categories:
• Low price ticket: amount < 20,000 <br>
• Mid price ticket: amount between 20,000 and 150,000 <br>
• High price ticket: amount >= 150,000
### 3. How many flights departed in the following seasons:
• Winter: December, January, February <br>
• Spring: March, April, May <br>
• Summer: June, July, August <br>
• Fall: September, October, November
### 4. Create a tier list for the films the following ways:
• 1. Rating is 'PG' or 'PG-13' or the length is more than 210 min: 'Great rating or long (tier 1)'<br>
• 2. Description contains 'Drama' and length is more than 90 min: 'Long drama (tier 2)'<br>
• 3. Description contains 'Drama' and length is not more than 90 min: 'Short drama (tier 3)'<br>
• 4. Rental_rate less than 1$: 'Very cheap (tier 4)'
### 5. Count how many movies are in each rating
</details>

<details>
<summary>

## Day 6:
</summary>

### 1.How many people chose seats in each category:
• Business <br>
• Economy <br>
• Comfort
### 2.Find how many tickets are there that have no boarding pass:
### 3.Find all the aircrafts that have not been used in any flight:
### 4.Find out which seat has been chosen most frequently. Make sure all seats are included:
### 5.FInd which line (A, B, C...) has been chosen the most
### 6.What are the customers(first name, last name, phone number and their district) from Texas?
### 7.Are there any old addresses that are not related to any customer?
### 8.Get the first name, last name, and email from all the customers from Brazil.
### 9.Which passenger (passenger_name) has spent most amount in their bookings (total_amount)?
### 10.Which fare_condition has ALEKSANDR IVANOV used the most?
### 11.Which title has GEORGE LINTON rented the most often?
</details>

<details>
<summary>

## Day 7
</summary>

### 1.Select all the films that their length is longer than the average length of the films
### 2.Return all the films that are available in the inventory of store 2 more than 3 times
### 3.Return all the customers first and last names that have made a payment on 2020-01-25
### 4.Return all the customers first name and email that have spent more than 30$.
### 5.Return all the customers first and last names that are from California and spent more than 100$ in total
### 6.What is the average total amount spent per day
### 7.Show all the payments together with how much the payment amount is below the maximum payment amount
### 8.Show all the movies that their replacement cost is the lowest in its rating.
### 9.Show all the movies that their runtime is highest in their rating.
### 10.Show all the payments of each customer and the total amount spent and the number of payments the customer has made
### 11.Show all the films with the highest replacement cost for each of their category and the average replacement cost for that category.
### 12.Show the payments with the highest amount for each customer including the customer's first_name and payment_id of that payment
</details>

<details>
<summary>

## Day 8 - Mid course project
</summary>

### Question 1:

Level: Simple

Topic: DISTINCT

Task: Create a list of all the different (distinct) replacement costs of the films.

Question: What's the lowest replacement cost?

Answer: 9.99



### Question 2:

Level: Moderate

Topic: CASE + GROUP BY

Task: Write a query that gives an overview of how many films have replacements costs in the following cost ranges

low: 9.99 - 19.99

medium: 20.00 - 24.99

high: 25.00 - 29.99

Question: How many films have a replacement cost in the "low" group?

Answer: 514



### Question 3:

Level: Moderate

Topic: JOIN

Task: Create a list of the film titles including their title, length, and category name ordered descendingly by length. Filter the results to only the movies in the category 'Drama' or 'Sports'.

Question: In which category is the longest film and how long is it?

Answer: Sports and 184



### Question 4:

Level: Moderate

Topic: JOIN & GROUP BY

Task: Create an overview of how many movies (titles) there are in each category (name).

Question: Which category (name) is the most common among the films?

Answer: Sports with 74 titles



### Question 5:

Level: Moderate

Topic: JOIN & GROUP BY

Task: Create an overview of the actors' first and last names and in how many movies they appear in.

Question: Which actor is part of most movies??

Answer: Susan Davis with 54 movies



### Question 6:

Level: Moderate

Topic: LEFT JOIN & FILTERING

Task: Create an overview of the addresses that are not associated to any customer.

Question: How many addresses are that?

Answer: 4



### Question 7:

Level: Moderate

Topic: JOIN & GROUP BY

Task: Create the overview of the sales  to determine the from which city (we are interested in the city in which the customer lives, not where the store is) most sales occur.

Question: What city is that and how much is the amount?

Answer: Cape Coral with a total amount of 221.55



### Question 8:

Level: Moderate to difficult

Topic: JOIN & GROUP BY

Task: Create an overview of the revenue (sum of amount) grouped by a column in the format "country, city".

Question: Which country, city has the least sales?

Answer: United States, Tallahassee with a total amount of 50.85.



### Question 9:

Level: Difficult

Topic: Uncorrelated subquery

Task: Create a list with the average of the sales amount each staff_id has per customer.

Question: Which staff_id makes on average more revenue per customer?

Answer: staff_id 2 with an average revenue of 56.64 per customer.



### Question 10:

Level: Difficult to very difficult

Topic: EXTRACT + Uncorrelated subquery

Task: Create a query that shows average daily revenue of all Sundays.

Question: What is the daily average revenue of all Sundays?

Answer: 1410.65



### Question 11:

Level: Difficult to very difficult

Topic: Correlated subquery

Task: Create a list of movies - with their length and their replacement cost - that are longer than the average length in each replacement cost group.

Question: Which two movies are the shortest on that list and how long are they?

Answer: CELEBRITY HORN and SEATTLE EXPECTATIONS with 110 minutes.



### Question 12:

Level: Very difficult

Topic: Uncorrelated subquery

Task: Create a list that shows the "average customer lifetime value" grouped by the different districts.

Example:
If there are two customers in "District 1" where one customer has a total (lifetime) spent of $1000 and the second customer has a total spent of $2000 then the "average customer lifetime spent" in this district is $1500.

So, first, you need to calculate the total per customer and then the average of these totals per district.

Question: Which district has the highest average customer lifetime value?

Answer: Saint-Denis with an average customer lifetime value of 216.54.



### Question 13:

Level: Very difficult

Topic: Correlated query

Task: Create a list that shows all payments including the payment_id, amount, and the film category (name) plus the total amount that was made in this category. Order the results ascendingly by the category (name) and as second order criterion by the payment_id ascendingly.

Question: What is the total revenue of the category 'Action' and what is the lowest payment_id in that category 'Action'?

Answer: Total revenue in the category 'Action' is 4375.85 and the lowest payment_id in that category is 16055.

</details>

<details>
<summary>

## Day 9
</summary>

### 1.
Create a table called online_sales with the following columns:

transaction_id

customer_id

film_id

amount

promotion_code

Transaction_id shoul be the primary key.
The columns customer_id and film_id should be foreign keys to the relevant tables.
The amount column can contain values from 0.00 to 999.99 - nulls should not be allowed.
The column promotion_code contains a promotion code of at maximum 10 characters. If there is no value you should set the default value 'None'.

Create that table and choose appropriate data types and constraints!

### 2. Add data to the table
### 3. Alter the director table:
• director_account_name to VARCHAR(30)<br>
• drop the default on last_name <br>
• add the constraint not null to last name <br>
• add the column email of datatype VARCHAR(40) <br>
• rename the director_account_name to account_name <br>
• rename the table from director to directors
### 4. Create a table called songs with the folllowing columns: song_id, song_name, genre, price, release_date
• During creation add the DEFAULT 'Not defined' to the genre <br>
• Add the not null constraint to the song_name <br>
• Add the constraint with the default name to ensure the price is at least 0.99 <br>
• Add the constraint date_check to ensure the release date is between today and 01-01-1950 <br>
</details>

<details>
<summary>

## Day 10
</summary>

### 1. Increase all the rental prices from 0.99 to 1.99
### 2. Add to the customer table Initials column e.g. Frank Brown - F.B.
### 3. Delete rows in payment table with payment_id 17064 and 17067
### 4. Create a new table that contains the full name of the customer and their total spending amount.
### 5. Create a view called films_category that shows a list of the film titles including their title, length and category name ordered descendingly by the length.
### 6. Challenge: Managing views
In this challenge, we use again the view v_customer_info that we have previously created:

```SQL
CREATE VIEW v_customer_info
AS
SELECT cu.customer_id,
    cu.first_name || ' ' || cu.last_name AS name,
    a.address,
    a.postal_code,
    a.phone,
    city.city,
    country.country
     FROM customer cu
     JOIN address a ON cu.address_id = a.address_id
     JOIN city ON a.city_id = city.city_id
     JOIN country ON city.country_id = country.country_id
ORDER BY customer_id
```
You need to perform the following tasks:

1) Rename the view to v_customer_information.

2) Rename the customer_id column to c_id.

3) Add also the initial column as the last column to the view by replacing the view.

</details>

<details>
<summary>

## Day 11
</summary>

### 1. Write a quey that returns a list of movies including(film_id, title, length, category and average length of films in said category)
### 2. Write a query that returns all the payment details and including the number of payments that were made by each customer and the amount
### 3. • Write a query that returns the running total of how late the flights are (difference between actual_arrival and scheduled_arrival) ordered by flight_id including the departure airport.
### • As a second query calculate the same running total but partition also by departure airport.
### 4. Write a query that returns the customer's name, the country and how many payments the have. For that use the view customer_list. Afterwards create a ranking of the top customers with the most sales for each country. Filer the result to display the top 3 customers from each country
### 5. Write a query that returns the revenue of the day and the revenue of the previous day and calculate the percentage growth compared to the previous day.
</details>

<details>
<summary>

## Day 12
</summary>

### 1. Write a query that returns the sum of the amount for each customer (first_name and last_name) and each staff_id. Also add the overall revenue per customer.
### 2. Wrtie a query that calculates a booking amount per quater, month, week in month and day.
### 3. Write a query that returns all grouping sets in all combinations of customer_id, date and title with the aggregation of the payment amount.
### 4. Find all the pairs of films with the same length.

</details>

<details>
<summary>

## Day 13 - Course project
</summary>

## Task 1

Difficulty: Moderate



### Task 1.1

In your company there hasn't been a database table with all the employee information yet.

You need to set up the table called employees in the following way:

<img src="https://img-b.udemycdn.com/redactor/raw/article_lecture/2022-08-10_14-06-45-9481317717076af04727664bc6344aec.png" alt="table image">

There should be NOT NULL constraints for the following columns:

first_name, last_name, job_position, start_date DATE, birth_date DATE



### Task 1.2

Set up an additional table called departments in the following way:


Additionally no column should allow nulls.



## Task 2

Difficulty: Moderate



Alter the employees table in the following way:

- Set the column department_id to not null.

- Add a default value of CURRENT_DATE to the column start_date.

- Add the column end_date with an appropriate data type (one that you think makes sense).

- Add a constraint called birth_check that doesn't allow birth dates that are in the future.

- Rename the column job_position to position_title.



## Task 3

Difficulty: Moderate



### Task 3.1



Insert the following values into the employees table.

There will be most likely an error when you try to insert the values.

So, try to insert the values and then fix the error.

Columns:

(emp_id,first_name,last_name,position_title,salary,start_date,birth_date,store_id,department_id,manager_id,end_date)


Values:
```SQL
(1,'Morrie','Conaboy','CTO',21268.94,'2005-04-30','1983-07-10',1,1,NULL,NULL),
(2,'Miller','McQuarter','Head of BI',14614.00,'2019-07-23','1978-11-09',1,1,1,NULL),
(3,'Christalle','McKenny','Head of Sales',12587.00,'1999-02-05','1973-01-09',2,3,1,NULL),
(4,'Sumner','Seares','SQL Analyst',9515.00,'2006-05-31','1976-08-03',2,1,6,NULL),
(5,'Romain','Hacard','BI Consultant',7107.00,'2012-09-24','1984-07-14',1,1,6,NULL),
(6,'Ely','Luscombe','Team Lead Analytics',12564.00,'2002-06-12','1974-08-01',1,1,2,NULL),
(7,'Clywd','Filyashin','Senior SQL Analyst',10510.00,'2010-04-05','1989-07-23',2,1,2,NULL),
(8,'Christopher','Blague','SQL Analyst',9428.00,'2007-09-30','1990-12-07',2,2,6,NULL),
(9,'Roddie','Izen','Software Engineer',4937.00,'2019-03-22','2008-08-30',1,4,6,NULL),
(10,'Ammamaria','Izhak','Customer Support',2355.00,'2005-03-17','1974-07-27',2,5,3,2013-04-14),
(11,'Carlyn','Stripp','Customer Support',3060.00,'2013-09-06','1981-09-05',1,5,3,NULL),
(12,'Reuben','McRorie','Software Engineer',7119.00,'1995-12-31','1958-08-15',1,5,6,NULL),
(13,'Gates','Raison','Marketing Specialist',3910.00,'2013-07-18','1986-06-24',1,3,3,NULL),
(14,'Jordanna','Raitt','Marketing Specialist',5844.00,'2011-10-23','1993-03-16',2,3,3,NULL),
(15,'Guendolen','Motton','BI Consultant',8330.00,'2011-01-10','1980-10-22',2,3,6,NULL),
(16,'Doria','Turbat','Senior SQL Analyst',9278.00,'2010-08-15','1983-01-11',1,1,6,NULL),
(17,'Cort','Bewlie','Project Manager',5463.00,'2013-05-26','1986-10-05',1,5,3,NULL),
(18,'Margarita','Eaden','SQL Analyst',5977.00,'2014-09-24','1978-10-08',2,1,6,2020-03-16),
(19,'Hetty','Kingaby','SQL Analyst',7541.00,'2009-08-17','1999-04-25',1,2,6,'NULL'),
(20,'Lief','Robardley','SQL Analyst',8981.00,'2002-10-23','1971-01-25',2,3,6,2016-07-01),
(21,'Zaneta','Carlozzi','Working Student',1525.00,'2006-08-29','1995-04-16',1,3,6,2012-02-19),
(22,'Giana','Matz','Working Student',1036.00,'2016-03-18','1987-09-25',1,3,6,NULL),
(23,'Hamil','Evershed','Web Developper',3088.00,'2022-02-03','2012-03-30',1,4,2,NULL),
(24,'Lowe','Diamant','Web Developper',6418.00,'2018-12-31','2002-09-07',1,4,2,NULL),
(25,'Jack','Franklin','SQL Analyst',6771.00,'2013-05-18','2005-10-04',1,2,2,NULL),
(26,'Jessica','Brown','SQL Analyst',8566.00,'2003-10-23','1965-01-29',1,1,2,NULL)
```




### Task 3.2

Insert the following values into the departments table.

<img src="https://img-b.udemycdn.com/redactor/raw/article_lecture/2022-08-10_14-06-45-028cd4a57cda9324639786daf3ae607d.png" alt="departments table">

## Task 4

Difficulty: Moderate



### Task 4.1

Jack Franklin gets promoted to 'Senior SQL Analyst' and the salary raises to 7200.

Update the values accordingly.



### Task 4.2

The responsible people decided to rename the position_title Customer Support to Customer Specialist.

Update the values accordingly.



### Task 4.3

All SQL Analysts including Senior SQL Analysts get a raise of 6%.

Upate the salaries accordingly.



### Task 4.4

Question:

What is the average salary of a SQL Analyst in the company (excluding Senior SQL Analyst)?



Answer:

8834.75



## Task 5

Difficulty: Advanced



### Task 5.1

Write a query that adds a column called manager that contains  first_name and last_name (in one column) in the data output.

Secondly, add a column called is_active with 'false' if the employee has left the company already, otherwise the value is 'true'.



### Task 5.2

Create a view called v_employees_info from that previous query.



## Task 6

Difficulty: Moderate



Write a query that returns the average salaries for each positions with appropriate roundings.



Question:

What is the average salary for a Software Engineer in the company.



Answer:

6028.00



## Task 7

Difficulty: Moderate



Write a query that returns the average salaries per division.



Question:

What is the average salary in the Sales department?



Answer:

6107.41



## Task 8

Difficulty: Advanced



### Task 8.1

Write a query that returns the following:

emp_id, first_name, last_name, position_title, salary

and a column that returns the average salary for every job_position.

Order the results by the emp_id.


### Task 8.2

Difficulty: Advanced to Pro



How many people earn less than there avg_position_salary?

Write a query that answers that question.

Ideally, the output just shows that number directly.



Answer:

9



## Task 9:

Difficulty: Advanced

Write a query that returns a running total of the salary development ordered by the start_date.

In your calculation, you can assume their salary has not changed over time, and you can disregard the fact that people have left the company (write the query as if they were still working for the company).






Question:

What was the total salary after 2018-12-31?



Answer:

180202.70



## Task 10:

Difficulty: Pro / Very difficult

Create the same running total but now also consider the fact that people were leaving the company.



Note:

This challenge is actually very difficult.

Don't worry if you can't solve it you are not expected to do so.

It is possible to solve the challenge even without the hints.

If you want you can try to solve it using the hints and it is still a difficult challenge.



Question:

What was the total salary after 2018-12-31?



Answer:

166802.84



Hint 1:
Use the view v_employees_info.

Hint 2:
Create two separate queries: one with all employees and one with the people that have already left

Hint 3:
In the first query use start_date and in the second query use end_date instead of the start_date

Hint 4:
Multiply the salary of the second query with (-1).

Hint 5:
Create a subquery from that UNION and use a window function in that to create the running total.



## Task 11

Difficulty: Advanced to Pro



### Task 11.1

Write a query that outputs only the top earner per position_title including first_name and position_title and their salary.




Question:

What is the top earner with the position_title SQL Analyst?



Answer:

Sumner with 10085.90



### Task 11.2

Add also the average salary per position_title.




### Task 11.3

Remove those employees from the output of the previous query that has the same salary as the average of their position_title.

These are the people that are the only ones with their position_title.



## Task 12



Difficulty: Pro



Write a query that returns all meaningful aggregations of

- sum of salary,

- number of employees,

- average salary

grouped by all meaningful combinations of

- division,

- department,

- position_title.



Consider the levels of hierarchies in a meaningful way.






## Task 13

Difficulty: Advanced to Pro



Write a query that returns all employees (emp_id) including their position_title, department, their salary, and the rank of that salary partitioned by department.

The highest salary per division should have rank 1.






Question:

Which employee (emp_id) is in rank 7 in the department Analytics?



Answer:

emp_id 26



## Task 14

Difficulty: Pro



Write a query that returns only the top earner of each department including

their emp_id, position_title, department, and their salary.



Question:

Which employee (emp_id) is the top earner in the department Finance?



Answer:

emp_id 8

</details>

<details>
<summary>

## Day 14
</summary>

### 1. Create a function that takes the customer's first and last name and returns the total amount of payments this customer has made.
### 2. Swap the position and the salary of the 2 employees Miller McQuater and Christalle McKenny using transactions.(emp_id of Miller and Christalle are 2 and 3)
### 3. Create a stored procedure called emp_swap that takes 2 params emp1 and emp2 and swaps their position and salary

</details>

<details>
<summary>

## Day 15
</summary>

### 1.In this challenge you need to create a user, a role and add privileges.

Your tasks are the following:



Create the user mia with password 'mia123'

Create  the role analyst_emp;

Grant SELECT on all tables in the public schema to that role.

Grant INSERT and UPDATE on the employees table to that role.

Add the permission to create databases to that role.

Assign that role to mia and test the privileges with that user.

</details>