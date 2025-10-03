CREATE TABLE stu_address (
    Roll_no NUMBER PRIMARY KEY,
    Name VARCHAR2(30) NOT NULL,
    City VARCHAR2(20) NOT NULL,
    Mobile_no VARCHAR2(13),
    Pin_no NUMBER(6)
    );
--  Insert multiple records into stu_address table
INSERT ALL
  INTO stu_address (Roll_no, Name, City, Mobile_no, Pin_no) 
      VALUES (101, 'Abhi', 'Etawah', '+919876543210', 206244)
  INTO stu_address (Roll_no, Name, City, Mobile_no, Pin_no) 
      VALUES (102, 'Deepak', 'Farrukhabad', '+917876583212', 209724)
  INTO stu_address (Roll_no, Name, City, Mobile_no, Pin_no) 
      VALUES (103, 'Rahul', 'Farrukhabad', '+919876543010', 209724)
  INTO stu_address (Roll_no, Name, City, Mobile_no, Pin_no) 
      VALUES (104, 'Ravi', 'Kannauj', '+919876146210', 209714)
  INTO stu_address (Roll_no, Name, City, Mobile_no, Pin_no) 
      VALUES (105, 'Jayant', 'Jhanshi', '+919782305210', 209242)
SELECT * FROM dual;     -- Required for INSERT ALL to work in Oracle
                
CREATE TABLE stu_marks (
    Roll_no NUMBER REFERENCES stu_address(Roll_no) ON DELETE CASCADE,  -- Foreign key with cascade delete
    Subject VARCHAR2(30) NOT NULL,
    Marks NUMBER(3)
    );
--  Insert multiple records into stu_address table
INSERT ALL
  INTO stu_marks (Roll_no, Subject, Marks) 
      VALUES (101, 'Science', 70)
  INTO stu_marks (Roll_no, Subject, Marks) 
      VALUES (101, 'Social Science', 81)
  INTO stu_marks (Roll_no, Subject, Marks) 
      VALUES (103, 'Math', 57)
  INTO stu_marks (Roll_no, Subject, Marks) 
      VALUES (102, 'English', 78)
  INTO stu_marks (Roll_no, Subject, Marks) 
      VALUES (105, 'Hindi', 91)
  INTO stu_marks (Roll_no, Subject, Marks) 
      VALUES (102, 'Science', 50)
  INTO stu_marks (Roll_no, Subject, Marks) 
      VALUES (103, 'Science', 61)
SELECT * FROM dual;     -- Required for INSERT ALL to work in Oracle

SELECT * FROM stu_address;
SELECT * FROM stu_marks;
-- Delete a specific subject record for a student (Rahul's Math marks)
DELETE FROM stu_marks WHERE Roll_no=103 AND Subject='Math';
-- Delete a student completely (Abhi), which will also remove their marks due to ON DELETE CASCADE
DELETE FROM stu_address WHERE Roll_no = 101;