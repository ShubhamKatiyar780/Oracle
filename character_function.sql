-- Converts the input string to InitCap format (first letter capital, rest lowercase)
SELECT INITCAP('SHUBHAM') FROM DUAL;

-- Returns the number of characters in the string 'SHUBHAM' (Output: 7)
SELECT LENGTH('SHUBHAM') FROM DUAL;

-- Extracts a substring starting from position 3, length 5, from the string
-- 'I am SHUBHAM katiyar' → Output: 'am SH'
SELECT SUBSTR('I am SHUBHAM katiyar', 3, 5) FROM DUAL;

-- Extracts 5 characters from position 3 in the string 'SHUBHAM' → Output: 'UBHAM'
SELECT SUBSTR('SHUBHAM', 3, 5) FROM DUAL;

SELECT INSTR('I am SHUBHAM katiyar', 'HA') FROM DUAL;

-- Returns the greatest value among the numbers: 57, 109, 3, 5, -80 → Output: 109
SELECT GREATEST(57, 109, 3, 5, -80) FROM DUAL;

-- Returns the smallest value among the numbers: 57, 109, 3, 5, -80 → Output: -80
SELECT LEAST(57, 109, 3, 5, -80) FROM DUAL;