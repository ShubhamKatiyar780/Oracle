CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    student_name VARCHAR2(30)
);
INSERT INTO students VALUES (1, 'Abhi');
INSERT INTO students VALUES (2, 'Deepak');
INSERT INTO students VALUES (3, 'Rahul');
INSERT INTO students VALUES (4, 'Ravi');
INSERT INTO students VALUES (5, 'Jayant');
INSERT INTO students VALUES (15, 'Gupta');
INSERT INTO students VALUES (25, 'Ashwani');

CREATE TABLE results (
    student_id NUMBER,
    subject VARCHAR2(30),
    marks NUMBER(3)
);
INSERT INTO results VALUES (1, 'Math', 85);
INSERT INTO results VALUES (1, 'Science', 78);
INSERT INTO results VALUES (2, 'Math', 65);
INSERT INTO results VALUES (4, 'Science', 90);
INSERT INTO results VALUES (10, 'Physics', 85);
INSERT INTO results VALUES (6, 'English', 75); -- Note: student_id = 6 doesn't exist in students


-- JOIN
-- JOIN = INNER JOIN (default behavior)
SELECT s.student_id,student_name,subject,marks FROM students s JOIN results r ON s.student_id=r.student_id;
SELECT s.student_id,student_name,subject,marks FROM students s INNER JOIN results r ON s.student_id=r.student_id;

-- NATURAL JOIN
SELECT student_id,student_name,subject,marks FROM students s NATURAL JOIN results r;
SELECT * FROM students s NATURAL JOIN results r;

-- CROSS JOIN
-- Implicit CROSS JOIN using commas (old style)
-- This query performs a CROSS JOIN between stu_address and stu_marks
-- It returns the Cartesian product of both tables
-- i.e., every row of stu_address is paired with every row of stu_marks
SELECT * FROM students, results;

-- Explicit CROSS JOIN (modern style)
-- This is the modern and more readable way of writing a CROSS JOIN
-- It also returns the Cartesian product
-- No join condition is used in a CROSS JOIN
SELECT * FROM students CROSS JOIN results;


-- OUTER JOIN
-- LEFT JOIN
SELECT s.student_id,student_name,subject,marks FROM students s LEFT JOIN results r ON s.student_id=r.student_id;
SELECT s.student_id,student_name,subject,marks FROM students s, results r WHERE s.student_id=r.student_id(+);

-- RIGHT JOIN
SELECT s.student_id,student_name,subject,marks FROM students s RIGHT JOIN results r ON s.student_id=r.student_id;
SELECT s.student_id,student_name,subject,marks FROM students s, results r WHERE s.student_id(+)=r.student_id;

-- FULL JOIN
SELECT s.student_id,student_name,subject,marks FROM students s FULL JOIN results r ON s.student_id=r.student_id;

-- ANTI JOIN
SELECT s.student_id, s.student_name
FROM students s
LEFT JOIN results r ON s.student_id = r.student_id
WHERE r.student_id IS NULL;
-- or
SELECT student_id, student_name
FROM students s
WHERE NOT EXISTS (
  SELECT 1 FROM results r WHERE r.student_id = s.student_id
);