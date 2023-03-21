--Employee Table:

create table employee(
id int primary key,
name varchar2(20),
designation varchar2(20),
salary number(10));
/
desc employee;
/
insert into employee values(1,'Manikandaprabhu','Software Developer',50000);
insert into employee values(2,'David','Testing',30000);
insert into employee values(3,'Kavin','Designer',80000);
insert into employee values(4,'Vimal','Full Stack',100000);
/
select * from employee;
/
alter table employee rename column id to employee_id;
/
DECLARE
    num1 integer;
    num2 real;
    num3 double precision;
begin
    null;
END;
/
set serveroutput on;
DECLARE
   SUBTYPE name is char(20);
   SUBTYPE message is varchar2(200);
   salutation name;
   greetings message;
BEGIN
    salutation := 'Reader';
    greetings := 'Welcome to world of PL/SQL';
    dbms_output.put_line('Hello ' || salutation || greetings);
END;
/
DECLARE
    a integer := 10;
    b integer := 20;
    c integer;
    f real;
BEGIN
    c := a+b;
    dbms_output.put_line('Value of c: ' || c);
    f := 70.0/3.0;
    dbms_output.put_line('Value of f: ' || c);
END;
/
DECLARE
    a number := 10;
    b number := 20;
    c number;
    f real;
BEGIN
    c := a+b;
    dbms_output.put_line('Value of c: ' || c);
    f := 70.0/3.0;
    dbms_output.put_line('Value of f: ' || f);
END;
/
DECLARE
    a number := 1;
    b number := 2;
BEGIN
    dbms_output.put_line('Outer Variable a: ' || a);
    dbms_output.put_line('Outer Variable b: ' || b);
    DECLARE
        a number := 55;
        b number := 45;
    BEGIN
        dbms_output.put_line('Inner Variable a: ' || a);
        dbms_output.put_line('Inner Variable b: ' || b);
    END;
END;
/
DECLARE 
   e_id employee.employee_id%type := 1; 
   e_name employee.name%type; 
   e_design employee.designation%type; 
   e_sal employee.salary%type; 
BEGIN 
   SELECT name, designation, salary INTO e_name, e_design, e_sal 
   FROM employee 
   WHERE employee_id = e_id;  
   dbms_output.put_line 
   ('Employee ' ||e_name || ' from ' || e_design || ' earns ' || e_sal); 
END; 
/  
commit;
/

PI Constant number := 3.15;
DECLARE
    pi constant number :=8;
    radius number(5,2);
    dia number(5,2);
    circumference number(7,2);
    area number(10,2);
BEGIN
    radius :=5.0; 
    dia := radius * 2;
    circumference := 2.0 * pi * radius;
    area := pi * radius * radius;
    dbms_output.put_line(pi);
    dbms_output.put_line('Radius: '|| radius);
    dbms_output.put_line('Diameter: ' || dia); 
    dbms_output.put_line('Circumference: ' || circumference); 
    dbms_output.put_line('Area: ' || area); 
END;
/
DECLARE
    i number(1);
    j number(2);
BEGIN
    for i in 1..3 loop
        for j in 1..3 loop
            dbms_output.put_line('i is: '|| i || ' and j is: ' || j);
        END loop inner_loop;
    END loop outer_loop;
END;
/
commit;
/
--ARRAY CONCEPT
DECLARE
    type namesarray is varray(5) of varchar2(20);
    type grades is varray(5) of integer;
    names namesarray;
    marks grades;
    total integer;
BEGIN
    names := namesarray('Kavita','Elango','Ayan','Rishav','Aziz');
    marks := grades(98,78,75,99,65);
    total := names.count;
    dbms_output.put_line('Total '|| total || ' Students');
    For i in 1 ..total LOOP
        dbms_output.put_line('Student: ' || names(i) || ' Marks: ' ||marks(i));
    END LOOP;
END;
/
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    