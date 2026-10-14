
-- Question 1: Display each employee's first name and department name
SELECT first_name, department_name
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id;


-- Question 2: Display first names and department names of IT employees
SELECT first_name, department_name
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
WHERE department_name = 'IT';


-- Question 3: Display employee names and department names,
-- sorted alphabetically by first name
SELECT first_name, department_name
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
ORDER BY first_name ASC;


-- Question 4: Display unique department names that have at least one matching employee
SELECT DISTINCT department_name
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id;


-- Question 5: Display HR employees, sorted alphabetically by first name
SELECT first_name, department_name
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
WHERE department_name = 'HR'
ORDER BY first_name ASC;


-- Question 6: Display each department and its total number of employees
SELECT department_name, COUNT(emp_id) AS total_employees
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
GROUP BY department_name;


-- Question 7: Display departments having more than 1 employee
SELECT department_name, COUNT(emp_id) AS total_employees
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
GROUP BY department_name
HAVING total_employees > 1;


-- Question 8: Display each department's employee count,
-- considering only employees whose emp_id is greater than 101
SELECT department_name, COUNT(emp_id) AS total_employees
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
WHERE emp_id > 101
GROUP BY department_name;


-- Question 9: Display each department and its employee count,
-- sorted from highest count to lowest
SELECT department_name, COUNT(emp_id) AS total_employees
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
GROUP BY department_name
ORDER BY total_employees DESC;


-- Question 10: Display departments with at least 2 employees
-- whose emp_id is greater than 101
SELECT department_name, COUNT(emp_id) AS total_employees
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
WHERE emp_id > 101
GROUP BY department_name
HAVING total_employees >= 2;


-- Question 10:
-- Find employees whose salary is greater than the average salary of all employees.
-- Display first_name, salary, and department_name.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
);


-- Question 11:
-- Find employees who work in the IT department.
-- Display first_name, salary, and department_name.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE d.department_name = 'IT';


-- Question 12:
-- Find employees earning more than the highest salary in the HR department.
-- Display first_name, salary, and department_name.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT MAX(e2.salary)
    FROM employees e2
    INNER JOIN departments d2 ON e2.dept_id = d2.dept_id
    WHERE d2.department_name = 'HR'
);


-- Question 13:
-- Find employees earning more than the average salary of their own department.
-- Display first_name, salary, and department_name.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.dept_id = e.dept_id
);


-- Question 14:
-- Find departments where every employee earns more than 40000.
-- Solve using a subquery.

SELECT d.department_name
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.dept_id = d.dept_id
)
AND NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.dept_id = d.dept_id
      AND e.salary <= 40000
);


-- Question 15:
-- Find employees earning more than at least one employee in Finance.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT MIN(e2.salary)
    FROM employees e2
    INNER JOIN departments d2 ON e2.dept_id = d2.dept_id
    WHERE d2.department_name = 'Finance'
);


-- Question 16:
-- Find employees earning more than every employee in Finance.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT MAX(e2.salary)
    FROM employees e2
    INNER JOIN departments d2 ON e2.dept_id = d2.dept_id
    WHERE d2.department_name = 'Finance'
);


-- Question 17:
-- Find employees earning less than every employee in HR.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary < (
    SELECT MIN(e2.salary)
    FROM employees e2
    INNER JOIN departments d2 ON e2.dept_id = d2.dept_id
    WHERE d2.department_name = 'HR'
);


-- Question 18:
-- Find employees whose salary matches the salary of at least one IT employee.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary IN (
    SELECT e2.salary
    FROM employees e2
    INNER JOIN departments d2 ON e2.dept_id = d2.dept_id
    WHERE d2.department_name = 'IT'
);


-- Question 19:
-- Find employees earning more than the average IT salary
-- but less than the average HR salary.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    INNER JOIN departments d2 ON e2.dept_id = d2.dept_id
    WHERE d2.department_name = 'IT'
)
AND e.salary < (
    SELECT AVG(e3.salary)
    FROM employees e3
    INNER JOIN departments d3 ON e3.dept_id = d3.dept_id
    WHERE d3.department_name = 'HR'
);


-- Question 20:
-- Find employees earning the second-highest distinct salary
-- within their own department.

SELECT e.first_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.dept_id = e.dept_id
      AND e2.salary < (
          SELECT MAX(e3.salary)
          FROM employees e3
          WHERE e3.dept_id = e.dept_id
      )
);
