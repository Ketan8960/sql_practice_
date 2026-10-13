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


-- Question 11: Display first_name and salary where salary is NULL
SELECT first_name, salary
FROM employees
WHERE salary IS NULL;


-- Question 12: Display first_name and salary where salary is NOT NULL
SELECT first_name, salary
FROM employees
WHERE salary IS NOT NULL;


-- Question 13: Display first_name and department of employees whose first name starts with 'A'
SELECT first_name, department
FROM employees
WHERE first_name LIKE 'A%';


-- Question 14: Display first_name and salary of employees whose first name ends with 'a'
SELECT first_name, salary
FROM employees
WHERE first_name LIKE '%a';


-- Question 15: Display first_name and department of employees whose first name contains 'e'
SELECT first_name, department
FROM employees
WHERE first_name LIKE '%e%';


-- Question 16: Display first_name, department, and salary of IT employees,
-- sorted by salary from highest to lowest
SELECT first_name, department, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;


-- Question 17: Display unique departments of employees whose salary is greater than 40000
SELECT DISTINCT department
FROM employees
WHERE salary > 40000;


-- Question 18: Display all employees sorted by department ascending
-- and salary descending within each department
SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;


-- Question 19: Display all unique departments in alphabetical order
SELECT DISTINCT department
FROM employees
ORDER BY department ASC;


-- Question 20: Display unique departments of employees whose salary is greater than 30000,
-- sorted alphabetically
SELECT DISTINCT department
FROM employees
WHERE salary > 30000
ORDER BY department ASC;

-- Question 21: Display employees earning between 30000 and 50000,
-- sorted by salary from lowest to highest
SELECT first_name, department, salary
FROM employees
WHERE salary BETWEEN 30000 AND 50000
ORDER BY salary ASC;


-- Question 22: Display employees who do not work in the IT department,
-- sorted by salary from highest to lowest
SELECT first_name, department, salary
FROM employees
WHERE department NOT IN ('IT')
ORDER BY salary DESC;


-- Question 23: Display unique departments of employees earning
-- between 30000 and 50000, sorted alphabetically
SELECT DISTINCT department
FROM employees
WHERE salary BETWEEN 30000 AND 50000
ORDER BY department ASC;


-- Question 24: Display employees whose first name starts with 'S',
-- sorted by salary from highest to lowest
SELECT first_name, department, salary
FROM employees
WHERE first_name LIKE 'S%'
ORDER BY salary DESC;


-- Question 25: Display HR or Finance employees,
-- sorted by salary from lowest to highest
SELECT first_name, department, salary
FROM employees
WHERE department = 'HR' OR department = 'Finance'
ORDER BY salary ASC;


-- Question 26: Display IT, HR, or Finance employees,
-- sorted by salary from highest to lowest
SELECT first_name, department, salary
FROM employees
WHERE department IN ('IT', 'HR', 'Finance')
ORDER BY salary DESC;


-- Question 27: Display employees whose salary is NULL,
-- sorted by first name alphabetically
SELECT first_name, department, salary
FROM employees
WHERE salary IS NULL
ORDER BY first_name ASC;


-- Question 28: Display employees whose salary is NOT NULL,
-- sorted by salary from lowest to highest
SELECT first_name, department, salary
FROM employees
WHERE salary IS NOT NULL
ORDER BY salary ASC;


-- Question 29: Display unique departments of employees whose
-- first name contains 'a', sorted alphabetically
SELECT DISTINCT department
FROM employees
WHERE first_name LIKE '%a%'
ORDER BY department ASC;


-- Question 30: Display unique departments of employees earning
-- between 40000 and 60000, sorted alphabetically
SELECT DISTINCT department
FROM employees
WHERE salary BETWEEN 40000 AND 60000
ORDER BY department ASC;

-- Question 30: Display each department and the number of employees
SELECT department, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY department;


-- Question 31: Display each department and its total salary
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;


-- Question 32: Display each department and its average salary
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;


-- Question 33: Display each department and its highest salary
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;


-- Question 34: Display each department and its lowest salary
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;


-- Question 35: Count employees earning more than 40000 in each department
SELECT department, COUNT(emp_id) AS total_employees
FROM employees
WHERE salary > 40000
GROUP BY department;


-- Question 36: Display departments having more than 2 employees
SELECT department, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY department
HAVING total_employees > 2;


-- Question 37: Display departments whose total salary is greater than 100000
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING total_salary > 100000;


-- Question 38: Display departments whose average salary is greater than 40000
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING average_salary > 40000;


-- Question 39: Display departments having more than 2 employees
-- who earn more than 30000
SELECT department, COUNT(emp_id) AS emp_count
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING emp_count > 2;
