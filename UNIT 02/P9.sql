-- Create the table
CREATE TABLE EMPL
(
    EMPNO NUMBER(4),
    ENAME VARCHAR2(20),
    SALARY NUMBER(8,2),
    DEPTNO NUMBER(2)
);

-- Insert records
INSERT INTO EMPL VALUES (101, 'Rahul', 85000, 10);
INSERT INTO EMPL VALUES (102, 'Priya', 65000, 20);
INSERT INTO EMPL VALUES (103, 'Amit', 95000, 30);
INSERT INTO EMPL VALUES (104, 'Neha', 70000, 20);
INSERT INTO EMPL VALUES (105, 'Karan', 90000, 10);

COMMIT;

-- Enable output
SET SERVEROUTPUT ON;

-- PL/SQL block using cursor and ORDER BY
DECLARE
    CURSOR C1 IS
        SELECT EMPNO, ENAME, SALARY, DEPTNO
        FROM EMPL
        ORDER BY SALARY DESC;

BEGIN
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE DETAILS');
    DBMS_OUTPUT.PUT_LINE('------------------------------');

    FOR R IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE(
            'EMPNO: ' || R.EMPNO ||
            '  NAME: ' || R.ENAME ||
            '  SALARY: ' || R.SALARY ||
            '  DEPTNO: ' || R.DEPTNO
        );
    END LOOP;
END;
/