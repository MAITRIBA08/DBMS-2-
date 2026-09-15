SET SERVEROUTPUT ON;

DECLARE
    v_SALARY emp.ENAME%TYPE;
  
BEGIN
	select SALARY
	into v_SALARY 
	from emp 
	where ename='&username';

	dbms_output.put_line('salary: '||v_SALARY);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.');

END;
/