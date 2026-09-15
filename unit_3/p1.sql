DECLARE
    no1 NUMBER := 100;
    no2 NUMBER := 0;
    result NUMBER;
BEGIN

    result := no1 / no2;

    DBMS_OUTPUT.PUT_LINE('Result = ' || result);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Division by zero is not allowed.');
    WHEN OTHERS THEN
	 DBMS_OUTPUT.PUT_LINE('OTHER ERROR: '||SQLERRM);
END;
/