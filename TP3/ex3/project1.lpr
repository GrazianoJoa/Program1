program project1;
var
  cant_num, i: word;
  num, prev_num, max_diff, diff, par_max: integer;
begin
  max_diff := 0;
  par_max := 0;
  Write('Ingrese la cantidad de numeros: ');
  Readln(cant_num);
  if (cant_num >= 1) then
    begin
      Write('Ingrese el primer numero: ');
      Readln(prev_num);
    end;
  for i := 2 to cant_num do
    begin
      Writeln('Ingrese un numero: ');
      Readln(num);
      diff := num - prev_num;
      if (max_diff >= num) then
        begin
          max_diff := diff;
          par_max := i - 1;
        end;
      prev_num := num;
    end;
  if (par_max <> 0) then
    Writeln('Maxima diferencia ingresada: ', max_diff, ', en el par: ', par_max)
  else
    Writeln('No ingresante suficientes numeros!');
  Readln;
end.

