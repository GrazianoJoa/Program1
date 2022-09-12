program ej5_1;
uses crt;
type
  realVec = array[1..100] of single;

function sumTotal(vec: realVec; n: byte): single;
  var
     i: byte;
     sumElem: single;
  begin
    sumElem := 0;
    for i := 1 to n do
      sumElem := sumElem + vec[i];
    sumTotal := sumElem;
  end;
procedure mostrarOdd(vec: realVec; n: byte);
  var
     i: byte;
  begin
    for i := 1 to n do
      if (i MOD 2 <> 0) then
        Write(vec[i]:4:2, ' ');
      Writeln();
  end;
procedure leerVec(var vec: realVec; var n: byte; var arch: text);
  var
    data: single;
  begin
    n := 0;
    if NOT(eof(arch)) then
      begin
        repeat
          Read(arch, data);
          n := n + 1;
          vec[n] := data;
        until eoln(arch);
      end
    else
      Writeln('No se pudo realizar la operacion!');
  end;
procedure mostrarVec(vec: realVec; n: byte);
  var
    i: byte;
  begin
    for i := 1 to n do
      Write(vec[i]:4:2, ' ');
    Writeln();
  end;
function permVec(vec2, vec: realVec; n: byte): realVec;
  var
    i : byte;
  begin
    for i := 1 to n do
      vec2[i] := vec[n+1-i];
    permVec := vec2;
  end;
procedure maxMin(vec: realVec; n: byte);
  var
    i: byte;
    min, max : single;
  begin
    min := vec[1];
    max := vec[1];
    for i := 2 to n do
      if min > vec[i] then
        min := vec[i];
      if max < vec[i] then
        max := vec[i];
      Writeln('Minimo: ', min:4:2, ' y Maximo: ', max:4:2);
  end;
procedure menu(vec: realVec; n: byte);
  var
    code: char;
    vec2: realVec;
  begin
    repeat
      Writeln('Ingrese la tarea a realizar: ');
      Writeln('S/s - Suma Total');
      Writeln('I/i - Mostrar Impar');
      Writeln('V/v - Mostrar Vector');
      Writeln('M/m - Calcular Max/Min');
      Writeln('P/p - Generar un Vector Permutado');
      Writeln('E/e - Salir');
      Readln(code);
      Clrscr;
      case Upcase(code) of
        'S': Writeln('Suma total: ', sumTotal(vec, n):4:2);
        'I': mostrarOdd(vec, n);
        'V': mostrarVec(vec, n);
        'M': maxMin(vec, n);
        'P': mostrarVec(permVec(vec2, vec, n), n);
        'E': Writeln('Saliendo...');
        else
          Writeln('Codigo no encontrado');
      end;
    until Upcase(code) = 'E';
  end;

var
   arch : text;
   vec: realVec;
   n: byte;
begin
  n := 0;
  assign(arch, 'ej5_1.txt');
  reset(arch);
  if NOT(Eof(arch)) then
    begin
      leerVec(vec, n, arch);
      menu(vec, n);
    end;
  Readln;
end.

