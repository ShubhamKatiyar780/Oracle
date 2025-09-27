-- Select all employees whose Id is between 1005 and 1010 (inclusive)
-- Using >= and <= (greater than or equal to, and less than or equal to)
SELECT * FROM employee WHERE Id>=1005 AND ID<=1010;
-- Same result as above but using BETWEEN for cleaner syntax
-- BETWEEN includes both the lower and upper boundary values (inclusive)
SELECT * FROM employee WHERE Id BETWEEN 1005 AND 1010;