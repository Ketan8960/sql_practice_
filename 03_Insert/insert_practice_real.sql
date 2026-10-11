
-- ============================================
-- SQL PRACTICE: INSERT, UPDATE, DELETE
-- QUESTIONS 1 TO 10
-- ============================================


-- Q1. INSERT A SINGLE ROW
-- Question:
-- Insert employee 103, Rahul, Finance, salary 45000.

INSERT INTO employees (emp_id, first_name, department, salary)
VALUES (103, 'Rahul', 'Finance', 45000);


-- Q2. INSERT MULTIPLE ROWS
-- Question:
-- Insert two employees using one SQL statement.
-- 104, Sneha, IT, 50000
-- 105, Arjun, Marketing, 42000.

INSERT INTO employees (emp_id, first_name, department, salary)
VALUES
(104, 'Sneha', 'IT', 50000),
(105, 'Arjun', 'Marketing', 42000);


-- Q3. UPDATE A SINGLE COLUMN
-- Question:
-- Change Priya's salary (emp_id 102) to 40000.

UPDATE employees
SET salary = 40000
WHERE emp_id = 102;


-- Q4. UPDATE MULTIPLE COLUMNS
-- Question:
-- Change Rahul's department to IT and salary to 50000.

UPDATE employees
SET department = 'IT',
    salary = 50000
WHERE first_name = 'Rahul';


-- Q5. DELETE A SPECIFIC RECORD
-- Question:
-- Delete employee 105 (Arjun).

DELETE FROM employees
WHERE emp_id = 105;


-- Q6. DELETE USING A CONDITION
-- Question:
-- Delete employees whose salary is less than 40000.

DELETE FROM employees
WHERE salary < 40000;


-- Q7. INCREASE SALARY BY 10%
-- Question:
-- Increase the salary of all IT employees by 10%.

UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';


-- Q8. UPDATE USING EMPLOYEE ID
-- Question:
-- Change Sneha's department (emp_id 104) to Finance.

UPDATE employees
SET department = 'Finance'
WHERE emp_id = 104;


-- Q9. DELETE USING MULTIPLE CONDITIONS
-- Question:
-- Delete employees in HR whose salary is less than 40000.

DELETE FROM employees
WHERE department = 'HR'
  AND salary < 40000;


-- Q10. UPDATE USING IN
-- Question:
-- Increase salaries by 5% for employees in HR or Finance.

UPDATE employees
SET salary = salary * 1.05
WHERE department IN ('HR', 'Finance');


-- ============================================
-- SQL PRACTICE: INSERT, UPDATE, DELETE
-- QUESTIONS 11 TO 20
-- ============================================


-- Q11. INSERT WITH SELECTED COLUMNS
-- Question:
-- Insert Neha with emp_id 106 and department HR.
-- Do not provide a salary value.

INSERT INTO employees (emp_id, first_name, department)
VALUES (106, 'Neha', 'HR');


-- Q12. UPDATE USING IS NULL
-- Question:
-- Set Neha's salary to 30000 only if her
-- current salary is NULL.

UPDATE employees
SET salary = 30000
WHERE salary IS NULL
  AND first_name = 'Neha';


-- Q13. UPDATE USING BETWEEN
-- Question:
-- Increase salary by 2000 for employees whose
-- current salary is between 30000 and 40000,
-- inclusive.

UPDATE employees
SET salary = salary + 2000
WHERE salary BETWEEN 30000 AND 40000;


-- Q14. DELETE USING NOT IN
-- Question:
-- Delete employees whose department is neither
-- IT nor HR.

DELETE FROM employees
WHERE department NOT IN ('IT', 'HR');


-- Q15. DELETE USING LIKE (STARTS WITH)
-- Question:
-- Delete employees whose first name starts with A.

DELETE FROM employees
WHERE first_name LIKE 'A%';


-- Q16. UPDATE USING LIKE (STARTS WITH)
-- Question:
-- Update the department to IT for employees
-- whose first name starts with R.

UPDATE employees
SET department = 'IT'
WHERE first_name LIKE 'R%';


-- Q17. DELETE USING LIKE (ENDS WITH)
-- Question:
-- Delete employees whose first name ends with a.

DELETE FROM employees
WHERE first_name LIKE '%a';


-- Q18. UPDATE USING LIKE (CONTAINS)
-- Question:
-- Update the department to Finance for employees
-- whose first name contains the letter e.

UPDATE employees
SET department = 'Finance'
WHERE first_name LIKE '%e%';


-- Q19. DELETE USING LIKE (CONTAINS)
-- Question:
-- Delete employees whose first name contains
-- the letter a anywhere.

DELETE FROM employees
WHERE first_name LIKE '%a%';


-- Q20. UPDATE USING NOT IN
-- Question:
-- Set salary to 35000 for employees whose
-- department is neither IT nor Finance.

UPDATE employees
SET salary = 35000
WHERE department NOT IN ('IT', 'Finance');
