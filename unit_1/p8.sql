BEGIN
	goto second_message;<<first_message>>
	dbms_output.put_line('HELLO');

	goto the_end;
	<<second_message>>
	dbms_output.put_line('pl/sql goto demo');

	goto first_message;
	<<the_end>>
	dbms_output.put_line('and good bye..');

END;
/