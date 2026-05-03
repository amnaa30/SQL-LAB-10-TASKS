--    Q4
--  Design a stored procedure:
-- Input: employee_id
-- Output: updated salary
--  Logic:
-- Increase salary based on performance tiers
-- Print result

set serveroutput on;
create or replace procedure proc_name(
   emp_id in employees.employee_id%type,
   currentsal in employees.salary%type,
   e_sal out employees.salary%type
)
IS
BEGIN 
    if (currentsal<1000) then
    update employees set salary=currentsal+400 where employee_id=emp_id;
    e_sal := currentsal+400;
    
    elsif (currentsal<1500) then
    update employees set salary=currentsal+300 where employee_id=emp_id;
    e_sal := currentsal+300;
    
    else
    update employees set salary=currentsal+200 where employee_id=emp_id;
    e_sal := currentsal+200;
    
    end if;
   
    dbms_output.put_line('PERFORMANCE BASED salary:' || e_sal);
end;
/
declare 
     val_sal EMPLOYEES.SALARY%TYPE;
begin 
      select salary into val_sal
      from employees
      where employee_id=100;
      
      proc_name(100,val_sal,val_sal);
      dbms_output.put_line('updated salary is:' || val_sal);
end;
/
select * from employees;
