CREATE TABLE shubh(
    name VARCHAR2(20),
    dob DATE
    );
    
-- Insert values into the table
-- Valid standard date format (DD-MON-YY)
INSERT INTO shubh VALUES('Shubham', '20-jul-99');

-- Using TO_DATE with custom format 'dd/mm/yyyy'
--️ Note: The format should be 'dd/Month/yyyy' to match the input
INSERT INTO shubh VALUES('Amit', TO_DATE('25/January/1998', 'dd/mm/yyyy'));

-- Another standard date format
INSERT INTO shubh VALUES('Rajat', '05-jan-97');

-- Using TO_DATE with a custom format: 'yyyy/mm/dd'
INSERT INTO shubh VALUES('Raj', TO_DATE('1995/OCT/24', 'yyyy/MM/dd'));

SELECT * FROM shubh;
-- Display name and year part of the date of birth
SELECT name, TO_CHAR(dob, 'yyyy') FROM shubh;

-- Display name and month part of the date of birth (in number)
SELECT name, TO_CHAR(dob, 'mm') FROM shubh;

-- Display records where the date of birth falls in the 4th quarter (Oct-Dec)
SELECT name, dob FROM shubh WHERE TO_CHAR(dob, 'q') = '4';

-- Insert a new row with only name, dob will be NULL
INSERT INTO shubh (name) VALUES('Sumit');

-- Replace NULL dob values with a default date using NVL
-- Shows original dob if not null, otherwise substitutes with 11-June-1996
SELECT name, NVL(dob, TO_DATE('11-june-1996', 'dd-mm-yyyy')) FROM shubh;

-- This query selects name, date of birth, and a decoded version of the name
-- using the DECODE function for conditional value mapping.
SELECT 
    name, 
    dob, 
    DECODE(
        name, 
        'Shubham', 'Shubh',      -- If name = 'Shubham', return 'Shubh'
        'Amit', 'Am',            -- If name = 'Amit', return 'Am'
        'Rajat', 'Raj',          -- If name = 'Rajat', return 'Raj'
        'not specified'          -- Default case if none match
    ) AS "decoded name"
FROM shubh;
