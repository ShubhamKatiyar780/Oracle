select * from employees;

-- Retrieve all records from the employees table
SELECT * FROM employees;

-- Count the number of non-null employee names
SELECT COUNT(emp_name) FROM employees;

-- Count the total number of rows (including NULLs)
SELECT COUNT(*) FROM employees;

-- Calculate the average salary of all employees
SELECT AVG(salary) FROM employees;

-- Calculate the total sum of all employee salaries
SELECT SUM(salary) FROM employees;

-- Find the highest salary
SELECT MAX(salary) FROM employees;

--️ This is invalid syntax in Oracle: MAX(DISTINCT salary)
-- Oracle doesn't support MAX(DISTINCT column). 
-- If you're trying to get the maximum of unique salaries, just use MAX(salary)
-- So this will raise an error:
-- SELECT MAX(DISTINCT salary) FROM employees;  ❌ Invalid

-- Similarly, this will also raise an error:
-- SELECT MIN(DISTINCT salary) FROM employees;  ❌ Invalid

-- Get the standard deviation of salaries (how spread out the salaries are)
SELECT STDDEV(salary) FROM employees;

-- Get the variance of salaries (measure of how much the salaries vary)
SELECT VARIANCE(salary) FROM employees;
