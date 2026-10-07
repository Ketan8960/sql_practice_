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