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