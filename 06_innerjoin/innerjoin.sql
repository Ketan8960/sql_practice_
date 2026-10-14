
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
