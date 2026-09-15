CREATE TABLE EMP (
    EID       NUMBER(5),
    ENAME     VARCHAR2(20),
    DEPTNO    NUMBER(3),
    DEPTNAME  VARCHAR2(20),
    GENDER    VARCHAR2(10),
    AGE       NUMBER(3),
    BASICSAL  NUMBER(10,2)
);

INSERT INTO EMP VALUES (101, 'RAHUL', 10, 'HR', 'MALE', 25, 25000);
INSERT INTO EMP VALUES (102, 'PRIYA', 20, 'IT', 'FEMALE', 23, 30000);
INSERT INTO EMP VALUES (103, 'AMIT', 10, 'HR', 'MALE', 28, 28000);
INSERT INTO EMP VALUES (104, 'NEHA', 30, 'SALES', 'FEMALE', 26, 27000);
INSERT INTO EMP VALUES (105, 'ROHIT', 20, 'IT', 'MALE', 30, 35000);

COMMIT;

CREATE TABLE EMP_BACKUP (
    EID       NUMBER(5),
    ENAME     VARCHAR2(20),
    DEPTNO    NUMBER(3),
    DEPTNAME  VARCHAR2(20),
    GENDER    VARCHAR2(10),
    AGE       NUMBER(3),
    BASICSAL  NUMBER(10,2)
);

SET SERVEROUTPUT ON;

DECLARE
	 CURSOR emp_cur IS
        SELECT EID, ENAME, DEPTNO, DEPTNAME, GENDER, AGE, BASICSAL
        FROM EMP
        WHERE DEPTNO = &DEPT_NO;

    NO_DEPT_FOUND EXCEPTION;
    v_count NUMBER := 0;

BEGIN

    FOR emp_rec IN emp_cur LOOP

        INSERT INTO EMP_BACKUP
        (EID, ENAME, DEPTNO, DEPTNAME, GENDER, AGE, BASICSAL)
        VALUES
        (emp_rec.EID, emp_rec.ENAME, emp_rec.DEPTNO,
         emp_rec.DEPTNAME, emp_rec.GENDER,
         emp_rec.AGE, emp_rec.BASICSAL);

        v_count := v_count + 1;

    END LOOP;

    IF v_count = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    DBMS_OUTPUT.PUT_LINE(v_count || ' record(s) inserted successfully.');

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO_DEPT_FOUND: No employees found for the entered DEPT_NO.');
    
END;
/