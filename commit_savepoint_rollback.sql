CREATE TABLE TEMP (
    ID NUMBER PRIMARY KEY,
    Name VARCHAR2(30) NOT NULL
    );
INSERT INTO TEMP VALUES (1, 'a');
INSERT INTO TEMP VALUES (2, 'b');
INSERT INTO TEMP VALUES (3, 'c');
INSERT INTO TEMP VALUES (4, 'd');
INSERT INTO TEMP VALUES (5, 'e');

-- Permanently save all previous uncommitted changes (if any)
COMMIT;

-- Create a savepoint named 'A' so we can rollback to this point later
SAVEPOINT A;

-- Insert a new row into TEMP table
INSERT INTO TEMP VALUES (6, 'f');

-- Update the name 'a' to 'aa' in the TEMP table
UPDATE TEMP SET Name = 'aa' WHERE name = 'a';

-- Delete the row where ID is 3
DELETE FROM TEMP WHERE ID = 3;

-- Rollback to savepoint A: this will undo the insert, update, and delete done after the savepoint
ROLLBACK TO A;

SELECT * FROM TEMP;