CREATE TABLE emp_details(
    e_id NUMBER PRIMARY KEY,
    e_name VARCHAR2(20),
    depart_id NUMBER,
    depart_name VARCHAR2(5),
    location VARCHAR2(10)
    );
INSERT ALL 
    INTO emp_details VALUES(101,'Nisha', 1,'TA','Delhi')
    INTO emp_details VALUES(110,'Abhi',1,'SE','Gurgaon')
    INTO emp_details VALUES(103,'Arohi',2,'TM','Noida')
    INTO emp_details VALUES(104,'Ritesh',2,'SE','Surat')
    INTO emp_details VALUES(105,'Amit',3,'TA','Jaipur')
    INTO emp_details VALUES(106,'Jitu',2,'TL','Gurgaon')
    INTO emp_details VALUES(107,'Kariya',3,'BA','Delhi')
    INTO emp_details VALUES(108,'Ravi',4,'TM','Lucknow')
    INTO emp_details VALUES(109,'Shyam',8,'SE','Kyderabad')
    INTO emp_details VALUES(111,'Ashish',3,'TL','Pune')
    INTO emp_details VALUES(118,'Shaka',2,'HR','Delhi')
SELECT * FROM DUAL;

CREATE TABLE emp_salary(
    e_id NUMBER,
    salary VARCHAR2(20)
    );
ALTER TABLE emp_salary ADD(FOREIGN KEY(e_id) REFERENCES emp_details(e_id) ON DELETE CASCADE);
INSERT ALL 
    INTO emp_salary VALUES(101,'25000')
    INTO emp_salary VALUES(110,'10000')
    INTO emp_salary VALUES(103,'20000')
    INTO emp_salary VALUES(104,'30000')
    INTO emp_salary VALUES(105,'40000')
    INTO emp_salary VALUES(106,'50000')
    INTO emp_salary VALUES(107,'55000')
    INTO emp_salary VALUES(108,'75000')
SELECT * FROM DUAL;
SELECT * FROM emp_salary;


z