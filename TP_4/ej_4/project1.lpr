program project1;
function ObtenerRandomAcotado(a,b: integer): integer;
var
  num : integer;
begin
  if (a >= 0) then
    begin
      repeat
        num := Random(b+1);
      until num <= a;
    end
  else
    begin
      if (b >= 0) then
        begin
          repeat
            num := random(b-a+1) + a;
          until num >= a;
        end
      else
        begin
          repeat
            num := random(b-a+1) + a;
          until num >= a;
        end;
    end;
    ObtenerRandomAcotado := num;
end;
var
  a, b: integer;
  i : word;
begin
  Readln(a,b);
  for i := 1 to 100 do
      writeln(ObtenerRandomAcotado(a,b));
  Readln;
end.

