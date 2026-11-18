program ptop;

var
  angka : integer;
  p : ^integer;
  pp : ^pinteger; 

begin
  clrscr;
  angka := 7;
  p := @angka;
  pp := @p;

  writeln('Angkanya: ', angka);
  writeln('Pointer 1: ', p^);
  writeln('Pointer 2: ', pp^^);
end.
