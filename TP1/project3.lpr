program project3;
var
  sup_x, sup_y, sup_req, bal_req: real;
begin
  Write('Ingrese las dimensiones de la superficie a embaldosar ');
  Readln(sup_x, sup_y);
  sup_req := (sup_x*sup_y*100)/300;
  Writeln('Representa ', sup_req:4:2, '% de la superficie total del terreno');
  bal_req := (sup_x*sup_y*1200)/300;
  Writeln('Se necesitan ',bal_req:4:2, ' baldosas');
  Readln;
end.

