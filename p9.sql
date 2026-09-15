create table emp(
    empno number,
    ename varchar2(20),
    salary number
);

insert into emp values(101,'rahul',50000);
insert into emp values(102,'priya',70000);
insert into emp values(103,'amit',60000);

commit;

declare
    cursor c1 is
    select empno, ename, salary
    from emp
    order by salary desc;

begin
    dbms_output.put_line('employee records:');

    for r in c1 loop
        dbms_output.put_line(r.empno || ' ' || r.ename || ' ' || r.salary);
    end loop;
end;
/