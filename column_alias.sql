SELECT * FROM stu_address;
SELECT * FROM stu_marks;


-- Select and rename columns using aliases in double quotes
-- This is useful for customizing column headers in the output
SELECT Roll_no "stu_roll_no", Subject "stu_subject", Marks "stu_marks" FROM stu_marks;
--SELECT stu_roll_no AS Roll_no, stu_subject AS Subject, stu_marks AS Marks FROM stu_marks;

SELECT Roll_no AS stu_roll_no, Subject AS stu_subject, Marks AS stu_marks FROM stu_marks;