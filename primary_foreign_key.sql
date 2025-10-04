CREATE TABLE emp (
    id NUMBER,
    name VARCHAR2(20)
);

-- Adds a PRIMARY KEY constraint to the 'id' column in the 'emp' table
-- This ensures that 'id' values are unique and not null
ALTER TABLE emp ADD PRIMARY KEY(id);

INSERT INTO emp VALUES (101, 'Raj');
INSERT INTO emp VALUES (102, 'Shyam');
INSERT INTO emp VALUES (103, 'Ravi');
INSERT INTO emp VALUES (104, 'Govind');

-- Displays the structure of the 'emp' table including column names, data types, and constraints
DESC emp;

drop table emp_sal;

--️ Drop the primary key constraint from the 'emp' table
ALTER TABLE emp DROP PRIMARY KEY;

-- (Optional) CASCADE is used to also drop dependent constraints (if any)
ALTER TABLE emp DROP PRIMARY KEY CASCADE;

CREATE TABLE emp_sal (
    emp_id NUMBER,
    salary NUMBER
);

-- View all records in both tables
DESC emp_sal;

-- Add a FOREIGN KEY constraint on 'emp_id' that references 'emp(id)'
-- ON DELETE CASCADE: If a record in 'emp' is deleted, matching records in 'emp_sal' are deleted automatically
ALTER TABLE emp_sal ADD (FOREIGN KEY(emp_id) REFERENCES emp(id) ON DELETE CASCADE);

INSERT INTO emp_sal VALUES (101, 55000);
INSERT INTO emp_sal VALUES (101, 25000);
INSERT INTO emp_sal VALUES (102, 80000);
INSERT INTO emp_sal VALUES (102, 69000);
INSERT INTO emp_sal VALUES (103, 820000);

SELECT * FROM emp;
SELECT * FROM emp_sal;

-- Add NOT NULL constraint to 'name' column in 'emp'
-- Ensures no employee name can be NULL
ALTER TABLE emp MODIFY name NOT NULL;

-- Remove NOT NULL constraint from 'name' column (make it nullable again)
ALTER TABLE emp MODIFY name NULL;

-- Delete one salary record of employee ID 102 from 'emp_sal'
DELETE FROM emp_sal WHERE emp_id = 102 AND salary = 69000;

-- Delete employee with ID 101 from 'emp'
-- Because of ON DELETE CASCADE, this will also delete matching records in 'emp_sal'
DELETE FROM emp WHERE id = 101;

-- Update employee name to 'Ravi' where ID is 103
UPDATE emp SET name = 'Ravi' WHERE id = 103;

-- Update all salary records with emp_id = 103 to emp_id = 104
-- Make sure emp_id = 104 exists in 'emp' to avoid foreign key error
UPDATE emp_sal SET emp_id = 104 WHERE emp_id = 103;

-- This will fail if emp_id = 104 exists in emp_sal
-- Reason: You can't update the primary key of 'emp' if it's referenced by a child (emp_sal)
-- ORA-02292: child record found
-- Fix: First update child table or delete dependent rows, then update
UPDATE emp SET id = 106 WHERE id = 104;