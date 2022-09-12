program ej5_2;
type
  vecInt = array[1..100] of integer;
procedure leerVec(vec: vecInt; n: byte);
  var
    i: byte;
  begin
    for i := 1 to n do
      Write(vec[i], ' ');
    Writeln();
  end;
var
  vecV, vecW: vecInt;
  num: integer;
  nV, nW : byte;
  arch: text;
begin
  assign(arch, 'ej5_2.txt');
  reset(arch);
  nV := 0;
  nW := 0;
  while NOT(eof(arch)) do
    begin
      Read(arch, num);
      if num <> 0 then
        begin
          if (num MOD 2 <> 0) then
            begin
              nV := nV + 1;
              vecV[nV] := num;
            end
          else
            begin
              nW := nW + 1;
              vecW[nW] := num;
            end;
        end;
    end;
  Write('Vector de impares: ');
  leerVec(vecV, nV);
  Write('Vector de pares: ');
  leerVec(vecW, nW);
  Close(arch);
  Readln;
end.

