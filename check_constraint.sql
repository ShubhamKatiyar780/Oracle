-- Create a table with constraints to validate lowercase names and marks between 0-100
CREATE TABLE marks (
    name VARCHAR2(20),
    
    -- CHECK constraint to ensure all names are in lowercase
    CONSTRAINT check_name CHECK(name = LOWER(name)),
    
    marks NUMBER,

    -- CHECK constraint to ensure marks are between 0 and 100
    CONSTRAINT check_marks CHECK(marks BETWEEN 0 AND 100)
);

-- Insert a valid row (lowercase name and valid marks)
INSERT INTO marks VALUES('raj', 72);

-- This will fail because 'RAM' is not lowercase → violates check_name constraint
INSERT INTO marks VALUES('RAM', 45);

-- This will fail because marks are above 100 → violates check_marks constraint
INSERT INTO marks VALUES('Shyam', 102);

-- Check the data that was successfully inserted
SELECT * FROM marks;

-- Drop the table to recreate it without initial constraints
DROP TABLE marks;

-- Step 2: Create the same table again without constraints first
CREATE TABLE marks (
    name VARCHAR2(20),
    mark NUMBER
);

-- Insert valid records (no constraint applied yet)
INSERT INTO marks VALUES('Raj', 72);
INSERT INTO marks VALUES('ram', 69);

-- Add CHECK constraint to validate marks between 0 and 100
ALTER TABLE marks
    ADD CONSTRAINT check_marks
    CHECK(mark BETWEEN 0 AND 100);
    
-- Disable the CHECK constraint named 'check_marks' on the 'marks' table.
-- This allows inserting or updating values in the 'mark' column 
-- that do not meet the condition (marks between 0 and 100).
ALTER TABLE marks DISABLE CONSTRAINT check_marks;

--️ While the constraint is disabled, this type of insert would be allowed:
-- INSERT INTO marks VALUES('rohit', 150); -- Would succeed even though 150 > 100

-- Re-enable the CHECK constraint named 'check_marks' on the 'marks' table.
-- This ensures that from now on, only values between 0 and 100 are allowed in the 'mark' column.
ALTER TABLE marks ENABLE CONSTRAINT check_marks;

--️ Note: If any data currently violates the constraint,
-- the ENABLE command will fail unless you use NOVALIDATE.

-- Alternative: Enable the constraint without validating existing data
-- ALTER TABLE marks ENABLE NOVALIDATE CONSTRAINT check_marks;


-- Will fail because 102 is greater than 100
INSERT INTO marks VALUES('Shyam', 102);

-- Add CHECK constraint to ensure name is in lowercase
ALTER TABLE marks
    ADD CONSTRAINT check_name
    CHECK(name = LOWER(name));

-- Will fail because 'JADU' is not lowercase
INSERT INTO marks VALUES('JADU', 95);

-- Valid insert: lowercase name and valid mark
INSERT INTO marks VALUES('arohi', 82);

-- Final view of data that was successfully inserted
SELECT * FROM marks;
