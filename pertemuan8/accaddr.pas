program accaddr;
uses crt;
var
  angka : integer;
  i : ^word;
  ptrangka : ^integer;

begin
  clrscr;
  angka := 10;
  writeln('Angka: ', angka);

  ptrangka := @angka;
  writeln('Pointer: ', ptrangka^);

  i := addr(ptrangka);
  writeln('Alamat pointer: ', i^);
end.
