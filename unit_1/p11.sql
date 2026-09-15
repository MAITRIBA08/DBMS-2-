DECLARE
	n number;
	i number;

BEGIN
	n:=&n;
	i:=1;

	while i<=n loop
	dbms_output.put_line(i);
	i:=i+1;
	end loop;

END;
/