program project1;
function factorial(num : byte): word;
var
  acum : word;
begin
  if (num > 0) then
    begin
         acum := num * factorial(num - 1);
         factorial := acum;
    end
  else
    factorial := 1;
end;
var
  num : byte;
begin
  Readln(num);
  Writeln(factorial(num));
  Readln;
end.

