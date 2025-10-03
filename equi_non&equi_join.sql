/*
An equi join is a type of join that uses the equality operator
(=) to match rows from two or more tables based on a common column.
*/
SELECT Name,Subject, Marks FROM stu_address, stu_marks WHERE stu_address.Roll_no=stu_marks.Roll_no;

-- Oracle SQL does not support AS for table aliases (only for column aliases).
SELECT sa.Roll_no,Name,Subject,Marks FROM stu_address sa,stu_marks sm WHERE sa.Roll_no=sm.Roll_no;


/*
A non-equi join is a type of join that uses a 
condition other than =, such as <, >, <=, >=, or BETWEEN.
*/
SELECT sa.Roll_no,Name,Subject,Marks FROM stu_address sa,stu_marks sm WHERE sa.Roll_no>sm.Roll_no;
SELECT sa.Roll_no,Name,Subject,Marks FROM stu_address sa,stu_marks sm WHERE sa.Roll_no<sm.Roll_no;



--Using JOIN syntax
SELECT sa.Roll_no,Name,Subject,Marks FROM stu_address sa JOIN stu_marks sm ON sa.Roll_no=sm.Roll_no;