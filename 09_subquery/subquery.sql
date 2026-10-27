
-- ==========================================
-- SQL SUBQUERY PRACTICE
-- Tables: students, exam, marks
-- ==========================================


-- Question 1:
-- Find students who scored more than the average marks.

SELECT *
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE marks > (
        SELECT AVG(marks)
        FROM marks
    )
);


-- Question 2:
-- Find students who have never appeared for any exam.
-- Assumption: Students without a record in marks
-- have not appeared for an exam.

SELECT *
FROM students
WHERE student_id NOT IN (
    SELECT student_id
    FROM marks
);


-- Question 3:
-- Find students who scored the highest marks.

SELECT student_id
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE marks IN (
        SELECT MAX(marks)
        FROM marks
    )
);


-- Question 4:
-- Find students who scored more than the average marks
-- for their respective exam.
-- Concept: Correlated Subquery

SELECT student_id
FROM marks m1
WHERE marks > (
    SELECT AVG(marks)
    FROM marks m2
    WHERE m2.exam_id = m1.exam_id
);

-- 1. Find employees earning more than the average salary.
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 2. Find employees earning the highest salary.
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- 3. Find employees earning less than the average salary.
SELECT *
FROM employees
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
);

-- 4. Find employees working in the same department as Rahul.
SELECT *
FROM employees
WHERE dept_no = (
    SELECT dept_no
    FROM employees
    WHERE emp_name = 'Rahul'
);

-- 5. Find students who scored above the average marks.
SELECT *
FROM marks
WHERE marks > (
    SELECT AVG(marks)
    FROM marks
);

-- 6. Find customers who have never placed an order.
SELECT *
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM orders
    WHERE customer_id IS NOT NULL
);

-- 7. Find employees earning the second-highest distinct salary.
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
    )
);

-- 8. Find products priced above the average product price.
SELECT *
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

-- 9. Find students who have not appeared for any exam.
SELECT *
FROM students
WHERE student_id NOT IN (
    SELECT student_id
    FROM marks
    WHERE student_id IS NOT NULL
);

-- 10. Find employees earning more than their department's average salary.
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_no = e.dept_no
);