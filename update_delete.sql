-- Retrieve and display all records from the student1 table
SELECT * FROM student1;

-- Delete the record where the Id is 101
DELETE FROM student1 WHERE Id = 101;

-- Update the name from 'Monu' to 'Sonu' where the current name is 'Monu'
-- (Use this if you had previously entered a wrong name like 'Monu')
UPDATE student1 SET Name = 'Sonu' WHERE Name = 'Monu';

-- Update the name from 'Sonu' to 'Monu' where the current name is 'Sonu'
-- (This reverses the previous change)
UPDATE student1 SET Name = 'Monu' WHERE Name = 'Sonu';
