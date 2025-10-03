-- Select all employees who are from either Bihar or Delhi using IN operator
SELECT * FROM employee WHERE State IN ('Bihar', 'Delhi');
-- Same as above, but using OR instead of IN
-- This also selects employees from Bihar or Delhi
SELECT * FROM employee WHERE State='Bihar' OR State='Delhi';
-- Select all employees who are NOT from Bihar or Delhi
-- This excludes rows where State is either 'Bihar' or 'Delhi'
SELECT * FROM employee WHERE State NOT IN ('Bihar', 'Delhi');