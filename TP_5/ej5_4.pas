program ej5_4;

procedure removerCerosArray(var vec2: intArr; var n2: byte; vec: intArr; n: byte);
  var
    i : byte;
  begin
    n2 := 0;
    for i := 1 to n do
      if vec[i] <> 0 then
        begin
          n2 := n2 + 1;
          vec2[n2] = vec[i]
        end;
  end;

begin
end.

