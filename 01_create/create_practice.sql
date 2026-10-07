-- Question 1
-- Create employees table
/*
Question 1 Basic CREATE TABLE
Create a table named employees with the following columns:
Column	  Requirement
emp_id	     Integer
emp_name	VARCHAR(50)
salary	     Decimal
department	VARCHAR(30)
*/

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(30)
);

-- Question 2
-- Create students table with primary key
/*
Create a table named students with:
- student_id → INT and PRIMARY KEY
- student_name → VARCHAR(50)
- age → INT
- course → VARCHAR(50)
*/
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);
-- ============================================================
-- SQL INTERVIEW PRACTICE
-- CREATE DATABASE & CREATE TABLE
-- ============================================================


-- ============================================================
-- Question 1
-- Create a database named company_db.
-- ============================================================

CREATE DATABASE company_db;


-- ============================================================
-- Question 2
-- Create an employees table with:
-- emp_id      -> INT
-- emp_name    -> VARCHAR(50)
-- salary      -> DECIMAL(10,2)
-- department  -> VARCHAR(30)
-- ============================================================

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(30)
);


-- ============================================================
-- Question 3
-- Create a students table with:
-- student_id   -> INT PRIMARY KEY
-- student_name -> VARCHAR(50)
-- age          -> INT
-- course       -> VARCHAR(50)
-- ============================================================

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);


-- ============================================================
-- Question 4
-- Create a customers table with:
-- customer_id   -> INT PRIMARY KEY
-- customer_name -> VARCHAR(50) NOT NULL
-- email         -> VARCHAR(100) UNIQUE
-- phone         -> VARCHAR(15)
-- ============================================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);


-- ============================================================
-- Question 5
-- Create an employees table with:
-- emp_id      -> INT PRIMARY KEY
-- emp_name    -> VARCHAR(50) NOT NULL
-- department  -> VARCHAR(30) DEFAULT 'IT'
-- salary      -> DECIMAL(10,2)
-- ============================================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) DEFAULT 'IT',
    salary DECIMAL(10,2)
);


-- ============================================================
-- Question 6
-- Create a products table with:
-- product_id   -> INT PRIMARY KEY
-- product_name -> VARCHAR(100) NOT NULL
-- price        -> DECIMAL(10,2), must be greater than 0
-- quantity     -> INT, must be greater than or equal to 0
-- ============================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    quantity INT CHECK (quantity >= 0)
);


-- ============================================================
-- Question 7
-- Create two tables:
--
-- departments:
-- department_id   -> INT PRIMARY KEY
-- department_name -> VARCHAR(50)
--
-- employees:
-- emp_id        -> INT PRIMARY KEY
-- emp_name      -> VARCHAR(50)
-- department_id -> INT FOREIGN KEY
--
-- department_id in employees should reference
-- department_id in departments.
-- ============================================================

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);


-- ============================================================
-- Question 8
-- Create a student_courses table with:
-- student_id      -> INT
-- course_id       -> INT
-- enrollment_date -> DATE
--
-- Make student_id + course_id a COMPOSITE PRIMARY KEY.
-- ============================================================

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id)
);


-- ============================================================
-- Question 9
-- Create an employees table with:
-- emp_id     -> INT PRIMARY KEY
-- emp_name   -> VARCHAR(50)
-- manager_id -> INT
--
-- manager_id should reference emp_id from the same table.
-- ============================================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id)
        REFERENCES employees(emp_id)
);


-- ============================================================
-- Question 10
-- Create an orders table with:
-- order_id     -> INT PRIMARY KEY
-- customer_id  -> INT NOT NULL
-- order_date   -> DATE
-- total_amount -> DECIMAL(10,2), must be greater than 0
-- status       -> VARCHAR(20), DEFAULT 'Pending'
--
-- customer_id should reference customers(customer_id).
-- ============================================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    total_amount DECIMAL(10,2) CHECK (total_amount > 0),
    status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);