program project1;
function powerN(x: single; n: integer): single;
var
  acum : single;
begin
  if (n > 0) then
     begin
       acum := x * powerN(x, n - 1);
       powerN := acum;
     end
  else if (n < 0) then
     begin
       acum := (1/x) * powerN(1/x, n + 1);
       powerN := acum;
     end
  else
      powerN := 1;
end;
var
  x: single;
  n: integer;
begin
  readln(x);
  readln(n);
  Writeln(powerN(x,n):4:2);
  readln;
end.

