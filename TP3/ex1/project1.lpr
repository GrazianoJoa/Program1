program project1;
const
  sueldo_basico = 15000;
var
  acum_sueldos, sueldo, max_sueldo: single;
  nombre, max_nombre : String;
  antiguedad, num_empleados, i: byte;
begin
  Write('Ingrese la cantidad de empleados a evaluar: ');
  Readln(num_empleados);
  max_sueldo := -1; {Valor limite}
  acum_sueldos := 0;
  for i := 1 to num_empleados do
    begin
      Readln(nombre);
      Readln(antiguedad);
      case antiguedad of
        0..5: sueldo := sueldo_basico * (105/100);
        6..10: sueldo := sueldo_basico * (108/100);
        11..15: sueldo := sueldo_basico * (112/100);
      else
        sueldo := sueldo_basico * (120/100);
      end;
      sueldo := sueldo * (89/100) - 500;
      if (sueldo > max_sueldo) then
        begin
          max_sueldo := sueldo;
          max_nombre := nombre;
        end;
      acum_sueldos := acum_sueldos + sueldo;
      Writeln('Empleado: ', nombre , ', sueldo:', sueldo:4:2);
    end;
  if (num_empleados <> 0) then
    Writeln('Monto de sueldos promedio: ', acum_sueldos/num_empleados:4:2);
    Writeln('El empleado con mayor sueldo es: ', max_nombre, ', con un sueldo de: ', max_sueldo:4:2);
  Readln;
end.

