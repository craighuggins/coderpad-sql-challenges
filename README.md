# My CoderPad Challenge Solutions

## Requirements
- Sqlite3
- Any other database system (please run the load-data script first!)

## How to run
The included database is preloaded with data to answer each of the questions.

To run the code for each question:
1. Active the sqlite3 shell and load the database
  ```bash
  sqlite3 coderpad_practice.db
  ```
2. Execute the SQL script for each question.
  ```bash
  .read <filename>
  ```
  For example:
  ```bash
  .read coderpad-sql-question_05.sql
  ```

If not using the included table, please do the following before the above steps:
1. Create table
  ```bash
  sqlite3 <table_name>
  ```
2. Load required data
  ```bash
  .read coderpad-sql-load-data.sql
  ```

## Question 1
Given a table Employees(id, first_name, last_name, department, salary), write a query to return all employees in the ‘Engineering’ department earning more than 80,000, ordered by salary descending.


## Question 2
Given a table Orders(order_id, customer_id, amount, order_date), write a query to find the total revenue per customer.


## Question 3
Given a table Customers(customer_id, city), return a list of unique cities where customers live.


## Question 4
Return the highest-paid employee from the Employees table.


## Question 5
Given:
- Customers(customer_id, name)
- Orders(order_id, customer_id, amount)

Write a query to return all customers with the total amount they have spent, including those who have never placed an order.
Result columns: customer_id, name, total_spent.


## Question 6
Find the products with more than 3 items sold


## Question 7
Given Movies(movie_id, title, genre, rating), find the average rating for each genre, sorted from highest to lowest.


## Question 8
From table Logins(user_id, login_timestamp), return the number of users who logged in yesterday.

**NOTE:** for this to work correctly, re-run the load data script

## Question 9
Return a list of all employees along with their department name. Include employees who do not belong to any department.

Tables involved:
- Employees
- Departments


## Question 10
Using the Views table, write a query to return:
- Total views
- Total unique users
- Average views per user
