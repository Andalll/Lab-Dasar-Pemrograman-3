program Faktorial_Rekursif;

var
  n: integer;

function Faktorial(x: integer): longint;
begin
  if x <= 1 then
    Faktorial := 1
  else
    Faktorial := x * Faktorial(x - 1);
end;

begin
  write('Nilai : ');
  readln(n);
  writeln('Hasil : ', Faktorial(n));
end.
