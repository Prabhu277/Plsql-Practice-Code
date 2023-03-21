set serveroutput on;
create or replace procedure greating as
begin
    dbms_output.put_line('Hello Prabhu');
END;
/
BEGIN
greating();
    dbms_output.put_line('How are nYou');
END;
/
execute greating;
/
--PROCEDURE IN Parameter
create or replace procedure s_add(a number, b number) is  c number;
begin
    c := a *b;
    dbms_output.put_line(c);
End;
/
execute s_add(10, 10);
/
desc employee;
select * from employee;
/
variable n1 number;
/
create or replace procedure get_sal
(e_id in employee.employee_id%type,
sal out employee.salary%type) is
begin
select salary into sal from employee
where employee_id = e_id;
end;
/
execute get_sal(4, :n1);
/
print n1;
/
select salary from employee where employee_id = 4;
/
create or replace procedure get_emp is cursor c1 is select * from employee;
begin
for i in c1 loop
dbms_output.put_line(i.employee_id||' '||i.name||' '||i.salary);
end loop;
end;
/
execute get_emp;
/
select text from user_source where name = 'GET_EMP';
/