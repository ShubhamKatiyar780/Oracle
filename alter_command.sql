-- Adds a new column 'gender' of type VARCHAR2 with max length 10 to the 'shubh' table
-- ADD: Used to add new columns or constraints
ALTER TABLE shubh ADD gender VARCHAR2(10);

-- Updates the 'gender' column for all existing rows in the 'shubh' table
-- This sets the value of gender to 'male' for every row
-- You can later add a WHERE clause to update specific rows if needed
UPDATE shubh SET gender='male';

-- Modifies the existing 'name' column to increase its size from 20 to 30 characters
-- MODIFY: Used to change the datatype or size of an existing column
ALTER TABLE shubh MODIFY name VARCHAR2(30);

-- Renames the column 'dob' to 'date_of_birth' in the 'shubh' table
-- RENAME COLUMN: Used to change the name of an existing column
ALTER TABLE shubh RENAME COLUMN dob TO date_of_birth;

-- Removes (drops) the 'gender' column from the 'shubh' table
-- DROP COLUMN: Used to delete a column from a table
ALTER TABLE shubh DROP COLUMN gender;

-- Adds a primary key constraint named 'pk_shubh' on the 'name' column
-- PRIMARY KEY: Ensures that the 'name' column contains only unique and non-null values
-- ADD CONSTRAINT: Used to define rules like PK, FK, UNIQUE, etc.
ALTER TABLE shubh ADD CONSTRAINT pk_shubh PRIMARY KEY (name);

-- Drops the primary key constraint named 'pk_shubh' from the 'shubh' table
-- DROP CONSTRAINT: Used to remove a named constraint from a table
ALTER TABLE shubh DROP CONSTRAINT pk_shubh;

-- Marks the 'dob' column in the 'shubh' table as UNUSED.
-- SET UNUSED: This hides the column from the table (logically deletes it),
-- making it invisible to future queries without physically dropping it immediately.
-- It's faster than DROP COLUMN and allows multiple columns to be dropped together later
ALTER TABLE shubh SET UNUSED COLUMN dob;

SELECT * FROM shubh;
UPDATE shubh SET gender='male';