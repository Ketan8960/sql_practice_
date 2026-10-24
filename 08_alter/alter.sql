
-- ============================================
-- ALTER TABLE: ADD COLUMN
-- MySQL Practice: Questions 1-10
-- ============================================


-- Question 1:
-- Add an email column with VARCHAR(100).

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);


-- Question 2:
-- Add phone_number with VARCHAR(15) and NOT NULL.

ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(15) NOT NULL;


-- Question 3:
-- Add status with VARCHAR(20) and DEFAULT 'Active'.

ALTER TABLE employees
ADD COLUMN status VARCHAR(20) DEFAULT 'Active';


-- Question 4:
-- Add middle_name with VARCHAR(50), allowing NULL,
-- immediately after first_name.

ALTER TABLE employees
ADD COLUMN middle_name VARCHAR(50) NULL
AFTER first_name;


-- Question 5:
-- Add work_email with VARCHAR(100) and UNIQUE.
-- Allow NULL values.

ALTER TABLE employees
ADD COLUMN work_email VARCHAR(100) NULL UNIQUE;


-- Question 6:
-- Add age as INT.
-- Age must be between 18 and 60, inclusive.

ALTER TABLE employees
ADD COLUMN age INT
CHECK (age >= 18 AND age <= 60);


-- Question 7:
-- Add an auto-incrementing employee_code.
-- Ensure values are unique.

ALTER TABLE employees
ADD COLUMN employee_code INT AUTO_INCREMENT UNIQUE;


-- Question 8:
-- Add joining_date as DATE at the beginning of the table.

ALTER TABLE employees
ADD COLUMN joining_date DATE FIRST;


-- Question 9:
-- Add bonus as DECIMAL(10,2) after salary.

ALTER TABLE employees
ADD COLUMN bonus DECIMAL(10,2)
AFTER salary;


-- Question 10:
-- Add three columns in one statement:
-- city: VARCHAR(50)
-- is_active: BOOLEAN with DEFAULT TRUE
-- commission: DECIMAL(8,2), allowing NULL

ALTER TABLE employees
ADD COLUMN city VARCHAR(50),
ADD COLUMN is_active BOOLEAN DEFAULT TRUE,
ADD COLUMN commission DECIMAL(8,2) NULL;

