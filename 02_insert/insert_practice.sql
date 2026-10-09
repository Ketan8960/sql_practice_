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

-- ============================================
-- ALTER TABLE PRACTICE - QUESTIONS 21 TO 30
-- ============================================


-- Q21. Drop Foreign Key
-- Question:
-- Remove the foreign key constraint named
-- fk_employee_department from company_employees.

ALTER TABLE company_employees
DROP FOREIGN KEY fk_employee_department;


-- Q22. Add Named UNIQUE Constraint
-- Question:
-- Add a UNIQUE constraint named uk_employee_email
-- to prevent duplicate email addresses.

ALTER TABLE company_employees
ADD CONSTRAINT uk_employee_email UNIQUE (email);


-- Q23. Drop UNIQUE Constraint
-- Question:
-- Remove the UNIQUE index named uk_employee_email.

ALTER TABLE company_employees
DROP INDEX uk_employee_email;


-- Q24. Add DEFAULT
-- Question:
-- Set the default value of status to 'Active'.
-- The column is VARCHAR(20).

ALTER TABLE company_employees
MODIFY COLUMN status VARCHAR(20) DEFAULT 'Active';


-- Q25. Add Named CHECK Constraint
-- Question:
-- Add a CHECK constraint named chk_employee_salary
-- to ensure salary is greater than 0.

ALTER TABLE company_employees
ADD CONSTRAINT chk_employee_salary
CHECK (salary > 0);


-- Q26. Drop CHECK Constraint
-- Question:
-- Remove the CHECK constraint named chk_employee_salary.

ALTER TABLE company_employees
DROP CHECK chk_employee_salary;


-- Q27. Add NOT NULL
-- Question:
-- Make the phone column NOT NULL.
-- The column is VARCHAR(15).

ALTER TABLE company_employees
MODIFY COLUMN phone VARCHAR(15) NOT NULL;


-- Q28. Remove NOT NULL
-- Question:
-- Remove NOT NULL from phone while keeping
-- its data type as VARCHAR(15).

ALTER TABLE company_employees
MODIFY COLUMN phone VARCHAR(15);


-- Q29. Add DEFAULT
-- Question:
-- Set the default value of city to 'Pune'.
-- The column is VARCHAR(50).

ALTER TABLE company_employees
MODIFY COLUMN city VARCHAR(50) DEFAULT 'Pune';


-- Q30. Remove DEFAULT
-- Question:
-- Remove the default value from city.

ALTER TABLE company_employees
ALTER COLUMN city DROP DEFAULT;
