CREATE TABLE EMPL(
	empno number(4),
	ename varchar2(30),
	salary number(8,2),
	deptno number(2)
);

INSERT INTO EMPL VALUES(101,'RAHUL',85000,10);
INSERT INTO EMPL VALUES(102,'PRIYA',65000,20);
INSERT INTO EMPL VALUES(103,'AMIT',95000,30);
INSERT INTO EMPL VALUES(104,'NEHA',70000,20);
INSERT INTO EMPL VALUES(105,'KARAN',90000,10);

COMMIT;

DECLARE
	CURSOR c_top3 IS
		SELECT ename,salary
		 FROM
		(
		 SELECT ename,salary
		 FROM EMPL
		 ORDER BY salary DESC
		)
		WHERE ROWNUM<=3;

BEGIN
	dbms_output.put_line('top 3 highest paid employee.');

	FOR EMPL_rec IN c_top3 loop
		dbms_output.put_line('employee name: '||EMPL_rec.ename||'salary: '||EMPL_rec.salary);
	END loop;
END;
/


