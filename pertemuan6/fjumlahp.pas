program LuasLingkaran;
uses crt;

function jumlah(a, b : integer): integer;
begin
  jumlah := a + b;
end;

var
  x, y, hasil : integer;
begin
  write('Masukkan x: ');
  readln(x);
  write('Masukkan y: ');
  readln(y);

  hasil := jumlah(x, y);

  writeln(hasil);
end.
