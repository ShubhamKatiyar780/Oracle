CREATE TABLE employees (
    emp_id NUMBER,
    emp_name VARCHAR2(30),
    department VARCHAR2(20),
    salary NUMBER
);
INSERT INTO employees VALUES (101, 'Abhi', 'HR', 45000.15);
INSERT INTO employees VALUES (102, 'Deepak', 'IT', 55000.79);
INSERT INTO employees VALUES (103, 'Rahul', 'Sales', 50000.456);

COLUMN salary FORMAT 9,99,999.99;
select * from employees;

COLUMN emp_name FORMAT A3 TRUNC;
select * from employees;

COLUMN emp_id     HEADING 'Employee ID'
COLUMN emp_name   HEADING 'Employee Name'
COLUMN department HEADING 'Dept.'
COLUMN salary     HEADING 'Monthly Salary'
SELECT * FROM employees;

-- NOTE:
--  Why It Doesn't Work in GUI:
-- GUI-based SQL tools like SQL Developer ignore formatting commands like COLUMN ... FORMAT and just show results in a table grid.