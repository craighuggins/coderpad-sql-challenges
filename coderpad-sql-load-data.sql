-- ===========================
-- 1. EMPLOYEES / DEPARTMENTS
-- ===========================
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Employees;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    manager_id INT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Departments VALUES
(1, 'Engineering'),
(2, 'Finance'),
(3, 'Sales'),
(4, 'HR');

INSERT INTO Employees VALUES
(1, 'Alice', 'Wong', 1, 120000, NULL),
(2, 'Bob', 'Smith', 1, 95000, 1),
(3, 'Charlie', 'Evans', 1, 110000, 1),
(4, 'Diana', 'Rose', 2, 80000, NULL),
(5, 'Evan', 'Lee', 2, 78000, 4),
(6, 'Fiona', 'Hall', 3, 70000, NULL),
(7, 'George', 'Young', 3, 72000, 6),
(8, 'Hannah', 'Cook', NULL, 65000, NULL);


-- ===========================
-- 2. CUSTOMERS / ORDERS / ORDER ITEMS
-- ===========================
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS OrderItems;
DROP TABLE IF EXISTS Products;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderItems (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    category VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'John Doe', 'Sydney'),
(2, 'Jane Miller', 'Melbourne'),
(3, 'Tim Carter', 'Perth');

INSERT INTO Products VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Sports');

INSERT INTO Orders VALUES
(101, 1, '2024-01-10'),
(102, 1, '2024-01-12'),
(103, 2, '2024-02-15');

INSERT INTO OrderItems VALUES
(1, 101, 1, 1, 899.99),
(2, 101, 2, 4, 15.00),
(3, 102, 1, 1, 899.99),
(4, 103, 3, 2, 59.99);


-- ===========================
-- 3. TRANSACTIONS
-- ===========================
DROP TABLE IF EXISTS Transactions;

CREATE TABLE Transactions (
    id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    ts TIMESTAMP
);

INSERT INTO Transactions VALUES
(1, 1, 50.00, '2024-01-01 10:00'),
(2, 1, 25.00, '2024-01-02 10:00'),
(3, 1, 40.00, '2024-01-03 10:00'),
(4, 2, 100.00, '2024-01-01 09:30'),
(5, 2, 75.00, '2024-01-02 11:00'),
(6, 3, 20.00, '2024-01-01 12:00');


-- ===========================
-- 4. LOGINS
-- ===========================
DROP TABLE IF EXISTS Logins;

CREATE TABLE Logins (
    user_id INT,
    login_timestamp TIMESTAMP
);

INSERT INTO Logins VALUES
(1, '2024-01-10 09:00'),
(1, '2024-01-11 09:00'),
(2, '2024-01-11 10:00'),
(3, '2024-01-12 15:00'),
(4, DATETIME('now', '-1 day', '12:00')),
(5, DATETIME('now', '-1 day', '09:30')),
(6, DATETIME('now', '-1 day', '18:45'));


-- ===========================
-- MOVIES + REVIEWS TABLES
-- ===========================
DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Reviews;

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50)
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    rating DECIMAL(3,1), -- e.g. 7.5, 8.0, 9.2
    review_date DATE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

-- Sample movies
INSERT INTO Movies VALUES
(1, 'Inception', 'Sci-Fi'),
(2, 'The Dark Knight', 'Action'),
(3, 'Interstellar', 'Sci-Fi'),
(4, 'The Notebook', 'Romance'),
(5, 'La La Land', 'Romance'),
(6, 'Mad Max: Fury Road', 'Action');

-- Sample reviews
INSERT INTO Reviews VALUES
(101, 1, 9.0, '2024-01-01'),
(102, 1, 8.5, '2024-01-02'),
(103, 2, 9.5, '2024-01-03'),
(104, 2, 9.2, '2024-01-04'),
(105, 3, 8.0, '2024-01-05'),
(106, 3, 8.3, '2024-01-06'),
(107, 4, 7.0, '2024-01-07'),
(108, 5, 8.1, '2024-01-08'),
(109, 5, 7.8, '2024-01-09'),
(110, 6, 9.7, '2024-01-10');



-- ===========================
-- Views TABLES
-- ===========================
DROP TABLE IF EXISTS Views;

CREATE TABLE Views (
    user_id INT,
    page_id INT,
    ts TIMESTAMP
);

-- Sample data
INSERT INTO Views VALUES
(1, 101, '2024-12-01 09:00'),
(1, 102, '2024-12-01 09:05'),
(1, 101, '2024-12-01 09:10'),
(2, 101, '2024-12-01 10:00'),
(2, 103, '2024-12-01 10:05'),
(3, 104, '2024-12-01 11:00'),
(3, 104, '2024-12-01 11:10'),
(3, 105, '2024-12-01 11:20');
