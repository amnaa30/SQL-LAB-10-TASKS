-- Q3
-- a) A payroll system:
-- If department = 10 → +1000 bonus
-- If department = 20 → +2000 bonus
-- Else → no change
--  Use CASE statement

DECLARE 
  E_sal employees.salary%type;
  DID employees.department_id%type;
  e_bonus number;
BEGIN 
  
  CASE
  WHEN (did = 10) then 
  update employees set salary = e_sal + e_bonus;
   
  WHEN (did = 20) then 
  update employees set salary = e_sal + e_bonus;
  
  else
   dbms_output.put_line('nothing found.');
  end case;

end;
/

-- b) A system processes salary:
-- If department = 90 AND salary between range → apply commission
--  Use Nested IF

declare 
   e_sal employees.salary%type;
   did employees.department_id%type;
begin 
    if (did = 90 ) then
      if ( e_sal between 3000 and 5000) then
         dbms_output.put_line('need commisission');
      end if;
    end if;
end;
/
