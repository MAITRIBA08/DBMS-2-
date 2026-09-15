CREATE TABLE EMPL
(
    EMPNO NUMBER(4),
    ENAME VARCHAR2(20),
    SALARY NUMBER(8,2),
    DEPTNO NUMBER(2)
);

INSERT INTO EMPL VALUES (101, 'Rahul', 85000, 10);
INSERT INTO EMPL VALUES (102, 'Priya', 65000, 20);
INSERT INTO EMPL VALUES (103, 'Amit', 95000, 30);
INSERT INTO EMPL VALUES (104, 'Neha', 70000, 20);
INSERT INTO EMPL VALUES (105, 'Karan', 90000, 10);

COMMIT;

SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_top3 IS
        SELECT ENAME, SALARY
        FROM
        (
            SELECT ENAME, SALARY
            FROM EMPL
            ORDER BY SALARY DESC
        )
        WHERE ROWNUM <= 3;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Top 3 Highest Paid Employees');
    DBMS_OUTPUT.PUT_LINE('----------------------------');

    FOR emp_rec IN c_top3 LOOP
        DBMS_OUTPUT.PUT_LINE('Employee Name : ' || emp_rec.ENAME);
        DBMS_OUTPUT.PUT_LINE('Salary        : ' || emp_rec.SALARY);
        DBMS_OUTPUT.PUT_LINE('----------------------------');
    END LOOP;
END;
/