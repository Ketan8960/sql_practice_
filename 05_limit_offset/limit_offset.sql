
-- Question 1: Display the top 5 employees with the highest salaries
SELECT first_name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;


-- Question 2: Display the next 5 employees after skipping the 5 highest-paid employees
SELECT first_name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 5 OFFSET 5;


-- Question 3: Display the second row when employees are sorted by salary from highest to lowest
-- Using LIMIT only, without OFFSET
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1, 1;


-- Question 4: Display the 3 employees with the lowest salaries
SELECT first_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 3;


-- Question 5: Display 3 employees after skipping the 2 employees with the lowest salaries
SELECT first_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 3 OFFSET 2;


-- Question 6: Display the next 2 employees after skipping the 3 highest-paid employees
-- Using comma-style LIMIT syntax
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3, 2;


-- Question 7: Display the 5th highest-paid employee
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 4, 1;


-- Question 8: Display the 4th, 5th, and 6th highest-paid employees
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3 OFFSET 3;


-- Question 9: Display the 2nd, 3rd, and 4th lowest-paid employees
SELECT first_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 3 OFFSET 1;


-- Question 10: Display the 3rd and 4th highest-paid employees
-- Using comma-style LIMIT syntax
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 2, 2;


-- Question 11: Display the top 3 highest-paid employees,
-- excluding employees whose salary is NULL
SELECT first_name, salary
FROM employees
WHERE salary IS NOT NULL
ORDER BY salary DESC
LIMIT 3;