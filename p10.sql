
declare


begin
    update emp
    set salary = salary + 5000
    where empno = 101;

    if sql%found then
        dbms_output.put_line('employee updated successfully');
        dbms_output.put_line('rows updated = ' || sql%rowcount);
    else
        dbms_output.put_line('employee not found');
    end if;

    commit;
end;
/