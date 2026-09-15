DECLARE
	marks number:=79;
BEGIN
	if marks>=90 then
		dbms_output.put_line('Grade A');
	
	elsif marks>=75 then
		dbms_output.put_line('Grade B');

	elsif marks>=60 then
		dbms_output.put_line('Grade C');

	else
		dbms_output.put_line('failed');
	end if;

       	
END;
/