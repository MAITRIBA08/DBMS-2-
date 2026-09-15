DECLARE
	n number;
	i number;

BEGIN
	n:=&n;

	FOR i in 1..n loop
	dbms_output.put_line(i);
	end loop;

END;
/