program LuasLingkaran;
uses crt;

function luas(jari : real): real;
begin
  luas := 3.14 * jari * jari;
end;

begin
  writeln(luas(7):0:2);
end.
