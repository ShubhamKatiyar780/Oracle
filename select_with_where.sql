--  Create a table named 'employee' with the following columns:
CREATE TABLE employee (
    Id NUMBER PRIMARY KEY,      -- Id     : Unique identifier for each employee (Primary Key)
    Name VARCHAR2(30) NOT NULL,    -- Name   : Employee's name (cannot be NULL)
    Gender VARCHAR2(10) NOT NULL,   -- Gender : Employee's gender (cannot be NULL)
    State VARCHAR2(20) DEFAULT 'Uttar Pradesh'  -- State  : Employee's state; defaults to 'Uttar Pradesh' if not provided
);

-- 🔍 Display the structure (columns, types, constraints) of the employee table
DESC employee;

-- Insert a record without specifying State
-- State will default to 'Uttar Pradesh'
INSERT INTO employee (Id, Name, Gender)
    VALUES (1002, 'Shyam', 'Male');
INSERT INTO employee (Id, Name, Gender)
    VALUES (1006, 'Vaibhav', 'Male');

--️ Insert record using substitution variables
-- You will be prompted to enter values for Id, Name, Gender, and State
-- (Used in SQL*Plus or Oracle SQL Developer)
INSERT INTO employee VALUES (&Id, '&Name', '&Gender', '&State');

--️ Insert using substitution variables again, without State
-- In this case, State will default to 'Uttar Pradesh'
INSERT INTO employee (Id, Name, Gender)
    VALUES (&Id, '&Name', '&Gender');

-- Display all employees sorted by their Id in ascending order
SELECT * FROM employee ORDER BY Id ASC;

-- Select only those employees whose State is 'Uttar Pradesh'
SELECT * FROM employee WHERE State = 'Uttar Pradesh';

-- Select only the names of all employees who are Female
SELECT name FROM employee WHERE Gender='Female';

-- Concatenate Id, Name, and State with hyphens in between
-- Example output: 101-Shyam-Delhi
SELECT Id||'-'||Name||'-'||State FROM employee;

-- Select all female employees who live in Delhi
SELECT * FROM employee WHERE Gender='Female' AND State='Delhi';

-- Select all employees whose names are NOT 'Suraj' and NOT 'Payal'
-- This excludes both 'Suraj' and 'Payal' from the results
SELECT * FROM employee WHERE NOT Name='Suraj' AND NOT Name='Payal';

-- Select all employees who are NOT female AND NOT from Bihar
-- This means: Only male employees from states other than Bihar
SELECT * FROM employee WHERE NOT Gender='Female' AND NOT State='Bihar';
