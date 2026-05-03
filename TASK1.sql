-- (A) Write a PL/SQL block:
-- Declare 2 variables
-- Add them
-- Print result using DBMS_OUTPUT.PUT_LINE

DECLARE 
    aa number := 100;
    b number := 200;
    C NUMBER;
BEGIN 
     c := aa+b;
     dbms_output.put_line('addition:' || c);
end;
/

-- (B) Write a PL/SQL block:
-- Declare a string variable
-- Print: "Welcome to Database Lab"

declare
      var_1 varchar2(50) := 'Welcome to Database Lab';
begin
    dbms_output.put_line('string is:' || var_1);
end;
/

