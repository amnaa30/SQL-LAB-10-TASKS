-- Q2. 
--  (a) A company wants to check employee salary:
-- If salary > 50,000 → print "High Salary"
-- Else → print "Normal Salary"

DECLARE 
     e_sal employees.SALARY%TYPE;

BEGIN 
     if (e_sal > 50000) then
       dbms_output.put_line('salary: High salarty');
     else
       dbms_output.put_line('salary: Normal salarty');
     end if;
end;
/

--  (b) A university system:
-- Fetch student name using SELECT INTO
-- Display it

declare
   namee VARCHAR2(50);
begin
   select first_name into namee
   from employees
   WHERE ROWNUM = 1;
   DBMS_OUTPUT.PUT_LINE(namee);
end;
/


-- (c) A bank system:
-- If balance < 1000 → add 500
-- Else → add 200
--  Use IF-ELSE

declare
   bal BANKS.BALANCE%TYPE;
begin
   if (bal < 1000) then
   update banks set balance = bal + 500;
   ELSE 
   update banks set balance = bal + 200;
   end if;
end;
/

-- (d) A company wants to display all employees in department 90
--  Use a FOR LOOP with SELECT query

declare 
      namee EMPLOYEES.FIRST_NAME%TYPE;
begin 
     for s in (
        select first_name 
        from employees 
        where department_id = 90 )
     loop 
        DBMS_OUTPUT.PUT_LINE(s.first_name);
     end loop;
     
end;
/
      
