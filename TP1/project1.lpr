program project1;
const
  term_1 = 1;
var
  termino_k, termino_k1 : integer;
  k : byte;
begin
  Write('Ingrese el termino a verificar: ');
  Readln(k);
  termino_k := term_1 + 3*(k-1);
  Writeln('El termino k ingresado es igual a: ', termino_k);
  termino_k1 := term_1 + 3*(k);
  Writeln('El termino k+1 ingresado es igual a: ', termino_k1);
  Writeln('La diff entre los terminos k y k+1 es: ', termino_k1-termino_k);
  Readln;
end.

