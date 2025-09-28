SELECT * FROM emp_details;
SELECT * FROM emp_salary;

CREATE OR REPLACE VIEW emp_details_view
AS SELECT * FROM emp_details;

DESC emp_details_view;

SELECT * FROM emp_details_view;

--DROP VIEW emp_details;
--TRUNCATE VIEW emp_details_view;

CREATE OR REPLACE VIEW emp_details_view
AS SELECT e_id, e_name, depart_name, location FROM emp_details;

CREATE OR REPLACE VIEW emp_details_view
AS SELECT * FROM emp_details UNION SELECT e_id, NULL, NULL, NULL, salary FROM emp_salary;

INSERT INTO emp_details_view VALUES (120, 'Pradeep', 5, 'HR', 'Ahamdabad');

UPDATE emp_details_view SET e_name='Kohli' WHERE e_name='Pradeep';



