-- ============================================
-- SQL PRACTICE: SELECT, WHERE, ORDER BY, DISTINCT
-- QUESTIONS 1 TO 10
-- ============================================


-- Q1. SELECT SPECIFIC COLUMNS
-- Question:
-- Display only first_name and salary for all employees.

SELECT first_name, salary
FROM employees;


-- Q2. WHERE CONDITION
-- Question:
-- Display first_name, department, and salary
-- for employees earning more than 40000.

SELECT first_name, department, salary
FROM employees
WHERE salary > 40000;


-- Q3. ORDER BY DESCENDING
-- Question:
-- Display first_name and salary, sorted from
-- highest salary to lowest salary.

SELECT first_name, salary
FROM employees
ORDER BY salary DESC;


-- Q4. ORDER BY ASCENDING
-- Question:
-- Display first_name and salary, sorted from
-- lowest salary to highest salary.

SELECT first_name, salary
FROM employees
ORDER BY salary ASC;


-- Q5. DISTINCT
-- Question:
-- Display all unique department names.

SELECT DISTINCT department
FROM employees;


-- Q6. WHERE WITH AND
-- Question:
-- Display employees in IT who earn more than 40000.

SELECT first_name, department, salary
FROM employees
WHERE department = 'IT'
  AND salary > 40000;


-- Q7. WHERE WITH OR
-- Question:
-- Display employees who belong to HR or Finance.

SELECT first_name, department, salary
FROM employees
WHERE department = 'HR'
   OR department = 'Finance';


-- Q8. WHERE WITH IN
-- Question:
-- Display employees in IT, HR, or Finance.

SELECT first_name, department, salary
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');


-- Q9. WHERE WITH BETWEEN
-- Question:
-- Display employees earning between 30000 and 45000,
-- including both endpoints.

SELECT first_name, salary
FROM employees
WHERE salary BETWEEN 30000 AND 45000;


-- Q10. WHERE WITH NOT BETWEEN
-- Question:
-- Display employees earning outside the range
-- of 30000 to 45000.

SELECT first_name, salary
FROM employees
WHERE salary NOT BETWEEN 30000 AND 45000;
