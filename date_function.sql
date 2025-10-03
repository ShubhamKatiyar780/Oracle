-- Display all data from the table 'shubh'
SELECT * FROM shubh;

-- ADD_MONTHS(date, n): Adds n months to the given date
-- Adds 6 months to 6-June-1999 → Result: 6-Dec-1999
SELECT ADD_MONTHS('06-jun-1999', 6) FROM DUAL;

-- LAST_DAY(date): Returns the last day of the month for the given date
-- Returns 30-Jun-1999 (last day of June 1999)
SELECT LAST_DAY('06-jun-1999') FROM DUAL;

-- MONTHS_BETWEEN(date1, date2): Returns the number of months between two dates
-- Exact months between 16-Dec-1999 and 16-Jun-1999 → 6.0
SELECT MONTHS_BETWEEN('16-DEC-1999', '16-jun-1999') FROM DUAL;

-- Returns months between 16-Dec-2000 and 6-Jun-1999 → ~18.3225806
SELECT MONTHS_BETWEEN('16-DEC-2000', '6-jun-1999') FROM DUAL;

-- Same as above, but reversed → Negative result (~ -18.3225806)
SELECT MONTHS_BETWEEN('6-jun-1999', '16-DEC-2000') FROM DUAL;

-- NEXT_DAY(date, 'THU'): Returns the next Thursday after 16-Dec-1999
-- Since 16-Dec-1999 is Thursday, returns 23-Dec-1999
SELECT NEXT_DAY('16-DEC-1999', 'THU') FROM DUAL;

-- Applies NEXT_DAY on dob for each person in 'shubh' to find next Thursday after their DOB
SELECT 
    name, 
    dob, 
    NEXT_DAY(dob, 'THU') AS next_thursday_after_dob 
FROM shubh;

-- NEW_TIME(date, from_timezone, to_timezone): Converts a date from one timezone to another
-- Converts 16-Dec-1999 from AST (Atlantic Standard Time) to CST (Central Standard Time)
SELECT NEW_TIME('16-DEC-1999', 'AST', 'CST') FROM DUAL;
