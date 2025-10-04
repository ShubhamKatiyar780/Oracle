create table student(Id NUMBER(5), Name varchar2(30), Address varchar2(30));
insert into student values (101, 'Abhimanyu', 'Bokaro');
insert into student values (102, 'Deepak', 'Dhanbad');
insert into student values (103, 'Sonu', 'Bokaro');
insert into student (Id, Name) values (104, 'Shyam');
desc student;
insert into student values (&Id, '&Name', '&Address');

SELECT * from student;
