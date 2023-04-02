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
execute get_sal(1, :n1);
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
--IN AND OUT
declare
    a number;
    b number;
    c number;
procedure findmin(x in number, y in number, z out number) is
begin
    if x<y then
        z:=x;
    else
        z:=y;
    end if;
End;
begin
    a :=20;
    b:=10;
    findmin(a,b,c);
    dbms_output.put_line('Minimum of (a , b) :' || c);
end;
/
--procedure if loop
create or replace procedure withdraw(p_no number,p_amt number)
is
v_bal number(10);
begin
select salary into v_bal from employee
where p_no=employee_id;
if p_amt<v_bal then
update employee set salary=salary-p_amt where p_no=employee_id;
dbms_output.put_line('Transaction Successfull');
else
dbms_output.put_line('Insufficent Funds');
end if;
end;
/
execute withdraw(1,40000);
/
set serveroutput on;
execute withdraw(1, 5000);
/
desc employee;
/