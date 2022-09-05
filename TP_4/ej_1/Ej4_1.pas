program Ej4_1;
function isLetra(caracter: char): Boolean;
begin
  if (Ord(Upcase(caracter)) >= 65) AND (Ord(Upcase(caracter)) <= 90) then
     isLetra := True
  else
     isLetra := False;
end;
begin
  Writeln(isLetra('4'));
  writeln(isLetra('a'));
  Readln;
end.

