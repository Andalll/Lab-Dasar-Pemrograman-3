program pointer1;
uses crt;
var
  angka : integer;
  pangka : ^integer;

begin
  clrscr;
  angka := 10;

  pangka := @angka;

  writeln('Nilai angka: ', angka);
  writeln('Pointer angka: ', pangka^);
end.
