SELECT * FROM stu_address;
SELECT * FROM stu_marks;

-- This query does the same as above, but uses table aliases for cleaner code
-- Note: Oracle does NOT allow AS for table aliases (only for column aliases)

SELECT 
    sa.Roll_no,   -- Student Roll_no from alias 'sa' (stu_address)
    sa.Name,      -- Student name from alias 'sa'
    sm.Subject,   -- Subject name from alias 'sm' (stu_marks)
    sm.Marks      -- Marks from alias 'sm'
FROM 
    stu_address sa,  -- Alias 'sa' for stu_address table
    stu_marks sm     -- Alias 'sm' for stu_marks table
WHERE 
    sa.Roll_no = sm.Roll_no; 
    -- Join condition between the two tables
