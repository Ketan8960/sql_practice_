
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
