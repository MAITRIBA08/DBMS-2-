DECLARE
	feet number;
	inch number;
	cm number;
	meter number;

BEGIN
	
	feet:=&feet;
	inch:=feet*12;
	cm:=feet*30.48;
	meter:=feet*0.3048;

	dbms_output.put_line('Feet:'||feet);
	dbms_output.put_line('inch:'||inch);
	dbms_output.put_line('cm:'||cm);
	dbms_output.put_line('meter:'||meter);
	
END;
/