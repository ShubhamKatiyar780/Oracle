-- primary key
-- Create the student1 table with:
CREATE TABLE student1 (
  Id NUMBER(5) PRIMARY KEY,     -- Id as Primary Key (max 5 digits)
  Name VARCHAR2(30) NOT NULL,   -- Name as a required field (max 30 characters)
  Address VARCHAR2(30) DEFAULT 'Delhi'  -- Address with a default value of 'Delhi' if not provided
);

-- Insert records into the student1 table
-- Full details provided: Id, Name, and Address
INSERT INTO student1 VALUES (101, 'Abhimanyu', 'Bokaro');
INSERT INTO student1 VALUES (102, 'Deepak', 'Dhanbad');
INSERT INTO student1 VALUES (103, 'Sonu', 'Bokaro');

-- Insert records with only Id and Name
-- Address will default to 'Delhi' automatically
INSERT INTO student1 (Id, Name) VALUES (104, 'Shyam');  -- Address defaults to 'Delhi'
INSERT INTO student1 (Id, Name) VALUES (105, 'Ram');    -- Address defaults to 'Delhi'

-- Insert data using substitution variables (for SQL*Plus or Oracle SQL Developer)
-- User will be prompted to enter values for Id, Name, and Address
INSERT INTO student1 VALUES (&Id, '&Name', '&Address');

-- Display all records from student1 table in ascending order by Id
SELECT * FROM student1 ORDER BY Id ASC;