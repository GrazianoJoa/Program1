program ej5_5;
type
  intArr = array[1..50] of integer;
function getMaxElemOfArr(arr: intArr; n: byte): integer;
  var
    i : byte;
    max: integer;
  begin
    max := arr[1];
    for i := 2 to n do
      if max < arr[i] then
        max := arr[i];
    getMaxElemOfArr := max;
  end;
procedure makeArrOfDivisors(var arr2: intArr; var m: byte; max: integer; arr: intArr; n: byte);
  var
    i : byte;
  begin
    m := 0;
    for i := 1 to n do
      if (max MOD arr[i] = 0) then
        begin
          m := m + 1;
          arr2[m] := arr[i]
        end;
  end;
procedure readArrFromFile(var arr: intArr; var n: byte; var arch: text);
  var
    data: integer;
  begin
    assign(arch, 'ej5_5.txt');
    reset(arch);
    n := 0;
    while not(eof(arch)) do
      begin
        read(arch, data);
        n := n + 1;
        arr[n] := data;
      end;
    close(arch);
  end;
procedure showArr(arr: intArr; n: byte);
  var
    i : byte;
  begin
    for i := 1 to n do
      Write(arr[i], ' ');
    Writeln;
  end;
function getPromOfArr(arr: intArr; n: byte): single;
  var
    i : byte;
    acum: integer;
  begin
    acum := 0;
    if n > 0 then
      begin
        for i := 1 to n do
          acum := acum + arr[i];
        getPromOfArr := acum/n;
      end
    else
      getPromOfArr := -1;
  end;

var
  max: integer;
  arr, arr2: intArr;
  n, m: byte;
  arch: text;
begin
  readArrFromFile(arr, n, arch);
  max := getMaxElemOfArr(arr, n);
  makeArrOfDivisors(arr2, m, max, arr, n);
  Write('Array 1: ');
  showArr(arr,n);
  Write('Array 2: ');
  showArr(arr2, m);
  Writeln('Promedio igual a: ', getPromOfArr(arr2, m):4:2);
  Readln;
end.

