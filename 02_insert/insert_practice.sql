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
-- ============================================
-- ALTER TABLE PRACTICE - QUESTIONS 11 TO 20
-- ============================================


-- Q11. Add experience column with CHECK constraint
-- Question:
-- Add experience DECIMAL(3,1) and ensure experience is not negative.

ALTER TABLE employees
ADD COLUMN experience DECIMAL(3,1),
ADD CHECK (experience >= 0);


-- Q12. Drop multiple columns
-- Question:
-- Remove phone and joining_date columns.

ALTER TABLE employees
DROP COLUMN phone,
DROP COLUMN joining_date;


-- Q13. Rename table
-- Question:
-- Rename employees to company_employees.

ALTER TABLE employees
RENAME TO company_employees;


-- Q14. Add named CHECK constraint
-- Question:
-- Add a CHECK constraint named chk_experience.

ALTER TABLE company_employees
ADD CONSTRAINT chk_experience
CHECK (experience >= 0);


-- Q15. Drop named CHECK constraint
-- Question:
-- Remove the chk_experience constraint.

ALTER TABLE company_employees
DROP CHECK chk_experience;


-- Q16. Add NOT NULL
-- Question:
-- Make the email column NOT NULL.

ALTER TABLE company_employees
MODIFY email VARCHAR(100) NOT NULL;


-- Q17. Remove NOT NULL
-- Question:
-- Remove NOT NULL from the email column.

ALTER TABLE company_employees
MODIFY email VARCHAR(100);


-- Q18. Add DEFAULT
-- Question:
-- Set the default value of department to 'Unknown'.

ALTER TABLE company_employees
MODIFY department VARCHAR(50) DEFAULT 'Unknown';


-- Q19. Remove DEFAULT
-- Question:
-- Remove the default value from department.

ALTER TABLE company_employees
ALTER COLUMN department DROP DEFAULT;


-- Q20. Add Foreign Key
-- Question:
-- Add a foreign key named fk_employee_department.

ALTER TABLE company_employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (dept_id)
REFERENCES departments(dept_id);