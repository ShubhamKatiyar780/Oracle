-- Create a table TEMP1 with ID and Name columns
CREATE TABLE TEMP (
    ID NUMBER PRIMARY KEY,
    Name VARCHAR2(30) NOT NULL
    );
    
-- Insert records into TEMP1 First record is manually inserted
INSERT INTO TEMP VALUES (1, 'Shubham');
-- Rename an existing table 'TEMP' to 'temp2'
-- Make sure 'TEMP' exists before running this
RENAME TEMP TO temp2;

SELECT * FROM TEMP;

-- delete only data of table
TRUNCATE TABLE TEMP;

SELECT * FROM TEMP;

-- delete the entire table
DROP TABLE TEMP;