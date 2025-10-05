-- Turn off default feedback like "14 rows selected"
SET FEEDBACK OFF

-- Set page and line formatting
SET PAGESIZE 30
SET LINESIZE 65

-- Enable pause after each page
SET PAUSE ON
SET PAUSE 'PRESS ANY KEY TO CONTINUE....'

-- Format the salary column to show $ and two decimal places
COLUMN salary FORMAT $99999.99

-- Set top title with page number formatting
TTITLE LEFT 'SALARY REPORT' SKIP 1 -
       LEFT 'PAGE ' SQL.PNO FORMAT 9 SKIP 2

-- Group data by department name and compute salary totals
BREAK ON depart_name SKIP 2
COMPUTE SUM LABEL 'TOTAL' OF salary ON depart_name

-- Query to display employee salary details, joined from two tables
SELECT ed.e_id,
       e_name,
       depart_name,
       location,
       salary
FROM emp_details ed
JOIN emp_salary es ON ed.e_id = es.e_id
ORDER BY e_id ASC;

-- Turn off the title and reset formatting settings
TTITLE OFF
CLEAR COLUMNS
SET PAUSE OFF
SET PAGESIZE 24
SET LINESIZE 80
SET FEEDBACK ON
