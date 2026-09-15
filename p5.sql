DECLARE
    CURSOR c_emp(dno NUMBER) IS
        SELECT ename, salary
        FROM emp
        WHERE deptno = dno;

    total NUMBER;
BEGIN
    FOR d IN (SELECT DISTINCT deptno FROM emp) LOOP
        total := 0;

        DBMS_OUTPUT.PUT_LINE('Department : ' || d.deptno);

        FOR e IN c_emp(d.deptno) LOOP
            DBMS_OUTPUT.PUT_LINE(e.ename || '  Salary : ' || e.salary);
            total := total + e.salary;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Total Salary : ' || total);
        DBMS_OUTPUT.PUT_LINE('----------------------');
    END LOOP;
END;
/