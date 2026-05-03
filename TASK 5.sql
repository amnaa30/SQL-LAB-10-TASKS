-- Q5.
-- Design a procedure using IN, OUT, IN OUT parameters:
-- Scenario:
-- Input: employee salary
-- OUT: bonus
-- IN OUT: updated salary
-- Logic:
-- Calculate bonus (10%)
-- Add bonus to salary
-- Return both

set serveroutput on;
create or replace procedure proc2(
  emp_sal in employees.salary%type,
  emp_bonus out employees.salary%type ,
  updatedsal in out employees.salary%type 
)
IS
begin
    if (emp_sal>10000)then
     update employees set salary= emp_sal + emp_bonus ;
    
    else
     update employees set salary=emp_sal + emp_bonus;
     
    end if; 
end;
/
declare 
   val_bonus employees.salary%type;
   updated_val employees.salary%type ;

begin 
    select salary into val_bonus
    from employees
    where rownum=1;
    updated_val := val_bonus + 0.1;
    dbms_output.put_line('updated addedd sal is:' || updated_val); 
    
end;
/
