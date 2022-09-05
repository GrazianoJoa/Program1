program project2;
var
  sueldo_b, sueldo_n, horas : single;
begin
  Write('Ingrese las horas trabajadas: ');
  Readln(horas);
  sueldo_b := horas * 200;
  Writeln('El sueldo bruto es: ', sueldo_b:6:2);
  sueldo_n := sueldo_b * (89/100) * (95/100);
  Writeln('El sueldo neto es: ', sueldo_n:6:2);
  Readln;
end.

