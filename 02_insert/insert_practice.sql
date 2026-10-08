-- ============================================================
-- ALTER TABLE - SQL INTERVIEW PRACTICE
-- ============================================================


-- ============================================================
-- Question 1
-- Add a new column email VARCHAR(100) to the employees table.
-- ============================================================

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);


-- ============================================================
-- Question 2
-- Add two columns to the employees table:
-- phone       -> VARCHAR(15)
-- joining_date -> DATE
-- ============================================================

ALTER TABLE employees
ADD phone VARCHAR(15),
ADD joining_date DATE;


-- ============================================================
-- Question 3
-- Change the phone column from VARCHAR(15) to VARCHAR(20).
-- ============================================================

ALTER TABLE employees
MODIFY COLUMN phone VARCHAR(20);


-- ============================================================
-- Question 4
-- Rename the column emp_name to employee_name.
-- Keep its existing data type.
-- ============================================================

ALTER TABLE employees
RENAME COLUMN emp_name TO employee_name;


-- ============================================================
-- Question 5
-- Remove the email column from the employees table.
-- ============================================================

ALTER TABLE employees
DROP COLUMN email;


-- ============================================================
-- Question 6
-- Add a PRIMARY KEY constraint to the existing emp_id column.
-- ============================================================

ALTER TABLE employees
ADD PRIMARY KEY (emp_id);


-- ============================================================
-- Question 7
-- Add a UNIQUE constraint to the department column.
-- ============================================================

ALTER TABLE employees
ADD UNIQUE (department);


-- ============================================================
-- Question 8
-- Add a CHECK constraint so that salary must be greater than
-- 10000.
-- ============================================================

ALTER TABLE employees
ADD CHECK (salary > 10000);


-- ============================================================
-- Question 9
-- Remove the CHECK constraint named chk_salary.
-- ============================================================

ALTER TABLE employees
DROP CHECK chk_salary;


-- ============================================================
-- Question 10
-- Remove the UNIQUE index/constraint named uk_department.
-- ============================================================

ALTER TABLE employees
DROP INDEX uk_department;