CREATE TABLE manager(
	empno number(4),
	ename varchar2(20),
	sal number(8,2),
	deptno number(2)
);
	
insert into manager values(101,'ram',20000,10);
insert into manager values(102,'shyam',25000,20);
insert into manager values(103,'mohan',30000,10);
insert into manager values(104,'rahul',80000,30);

COMMIT;

set serveroutput on;

DECLARE
	total_rows number(2):=0;
	CURSOR man1 IS SELECT sal FROM manager WHERE deptno=20 FOR UPDATE OF sal;
	sal manager.sal%type;
BEGIN
	OPEN man1;
	IF SqL%ISOPEN THEN
		dbms_output.put_line('cursor is open');
	ELSE
		dbms_output.put_line('cursor is not open');
	END IF;

	LOOP
		FETCH man1 INTO sal;
		EXIT WHEN man1%notfound;

	         UPDATE manager SET sal=sal+(sal*5/100)WHERE CURRENT OF man1; 

		IF sql%notfound THEN
			dbms_output.put_line('no manager selected');
		ELSIF sql%found THEN
			total_rows:=man1%rowcount;
				dbms_output.put_line(total_rows || 'manager salary updated');
		END IF;
	END LOOP;
COMMIT;	

END;
/