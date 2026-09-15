DECLARE
    v_rollno RESULT.rollno%TYPE;
    v_name  RESULT.sname%TYPE;
    v_marks RESULT.marks%TYPE;

	FAIL_EXECPTION EXECTION;

BEGIN
 
    rno:='&enter_rollno';

    SELECT NAME,MARKS INTO name,marks FROM RESULT
    WHERE ROLLNO=rno;

    if marks>=40 then
    	DBMS_OUTPUT.PUT_LINE('Student rollno : ' || v_rollno);
    	DBMS_OUTPUT.PUT_LINE('Student Name : ' || v_name);
    	DBMS_OUTPUT.PUT_LINE('Result/Marks : ' || v_marks);
	DBMS_OUTPUT.PUT_LINE('Status  :fail ');
	DBMS_OUTPUT.PUT_LINE('message  : student didnt pass');

    WHEN NO_DATA_FOUND THEN
	 DBMS_OUTPUT.PUT_LINE('ERROR : rollno' || rno ||' not found in the RESULT table.');
        
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR: '||SQLERRM);
END;
/