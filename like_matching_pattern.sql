SELECT * FROM employee;

-- Select employees whose name starts with 'S'
-- Matches: Shyam, Sonal, Suraj (if they exist in the table)
SELECT * FROM employee 
WHERE Name LIKE 'S%';

-- Select employees whose name ends with 'am'
-- Matches: Shyam, Ram
SELECT * FROM employee 
WHERE Name LIKE '%am';

-- Select employees whose name contains 'ya' anywhere
-- Matches: Shyam, Priya
SELECT * FROM employee 
WHERE Name LIKE '%ya%';

-- Select employees whose second letter is 'n'
-- '_' matches one character, so '_n%' means:
-- any name where the second character is 'n'
-- Matches: Ankit, Sneha, Anshu
SELECT * FROM employee 
WHERE Name LIKE '_n%';

-- Select employees whose name is exactly 5 characters long
-- Each '_' represents one character; '_____' = exactly 5 letters
-- Matches: Shyam, Sonal, Payal, Suraj
SELECT * FROM employee 
WHERE Name LIKE '_____';