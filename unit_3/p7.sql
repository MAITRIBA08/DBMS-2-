DECLARE
	v_num NUMBER;
BEGIN
	v_num:='ABC';
	dbms_output.put_line('NUMBER= '||v_num);
EXCEPTION
	WHEN VALUE_ERROR THEN
		dbms_output.put_line('invalid number exception: invalid number format.');
END;
/