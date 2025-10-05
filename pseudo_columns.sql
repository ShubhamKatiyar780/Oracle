-- Display current system timestamp (date + time + time zone) and system date (date only)
SELECT systimestamp, sysdate FROM dual;

-- Show the current user's UID and username
SELECT uid, user FROM dual;

-- Create a sequence named id_seq to auto-generate unique IDs
CREATE SEQUENCE id_seq
    MINVALUE 101         -- Minimum value for the sequence
    MAXVALUE 100000      -- Maximum value for the sequence
    START WITH 101       -- First number to be generated
    INCREMENT BY 1       -- Increase by 1 each time
    CACHE 30;            -- Cache 30 values in memory for better performance
    
-- Create a table TEMP1 with ID and Name columns
CREATE TABLE TEMP1 (
    ID NUMBER PRIMARY KEY,
    Name VARCHAR2(30) NOT NULL
    );
    
-- Insert records into TEMP1 First record is manually inserted
INSERT INTO TEMP1 VALUES (1, 'Shubham');

-- Insert records using the sequence to auto-generate IDs
INSERT INTO TEMP1 VALUES (id_seq.NEXTVAL, 'Katiyar');
INSERT INTO TEMP1 VALUES (id_seq.NEXTVAL, 'Ravi');
INSERT INTO TEMP1 VALUES (id_seq.NEXTVAL, 'King');
INSERT INTO TEMP1 VALUES (id_seq.NEXTVAL, 'Queen');
INSERT INTO TEMP1 VALUES (id_seq.NEXTVAL, 'Rat');
INSERT INTO TEMP1 VALUES (id_seq.NEXTVAL, 'Lion');
INSERT INTO TEMP1 VALUES (id_seq.NEXTVAL, 'abc');

SELECT * FROM TEMP1;

-- Show each row's ROWNUM (temporary row number), ROWID (unique row address), and data
SELECT ROWNUM, ROWID, ID, Name FROM TEMP1;

-- Get the first 3 rows from TEMP1
SELECT * FROM TEMP1 WHERE ROWNUM < 4;

--️ This will return no results (explained below)
-- ROWNUM filtering must be done in a subquery if using >=
SELECT * FROM TEMP1 WHERE ROWNUM >= 4;