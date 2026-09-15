DECLARE
	n number;
	i number;

BEGIN
	n:=&n;
	i:=1;
	
	loop
	exit when i>n;
	dbms_output.put_line(i);
	i:=i+1;
	end loop;

END;
/