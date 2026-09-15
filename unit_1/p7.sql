DECLARE
	c number;
	f number;

BEGIN

	c:=&celcius;
	f:=(c*9/5)+32;

	dbms_output.put_line('celcius:'||c);
	dbms_output.put_line('farenhit:'||f);
	
END;
/