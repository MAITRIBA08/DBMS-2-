SET SERVEROUTPUT ON;

DECLARE
    v_SALARY EMP.ename%type;
  
BEGIN
	select SALARY
	into v_SALARY 
	from EMP
	where age=25;

	dbms_output.put_line('salary: '||v_SALARY);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.');

END;
/