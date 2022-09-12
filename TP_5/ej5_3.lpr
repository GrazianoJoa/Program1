program ej5_3;
type
  vecInt = array[1..100] of integer;

procedure cambiarK(var vec: vecInt; n: byte; k: integer);
  var
    i : byte;
  begin
    for i := 1 to n do
      if vec[i] = k then
        vec[i] := 0;
  end;
procedure leerArch(var vec: vecInt; var n: byte; var arch: text);
  var
    num : integer;
  begin
    n := 0;
    assign(arch, 'ej5_3.txt');
    reset(arch);
    while not(eof(arch)) do
      begin
        read(arch, num);
        n := n + 1;
        vec[n] := num;
      end;
    close(arch);
  end;
procedure mostrarVec(vec: vecInt; n : byte);
  var
    i : byte;
  begin
    for i := 1 to n do
      Write(vec[i], ' ');
    Writeln;
  end;
var
  n : byte;
  vec : vecInt;
  k : integer;
  arch: text;
begin
  n := 0;
  leerArch(vec, n, arch);
  Write('Vector leido: ');
  mostrarVec(vec, n);
  Write('Que deseas cambiar? ');
  Readln(k);
  cambiarK(vec, n, k);
  mostrarVec(vec, n);
  readln;
end.

