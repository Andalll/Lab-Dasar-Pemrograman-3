program stokBarang;
uses crt;

type
  Barang = record
    kode  : string[10];
    nama  : string[30];
    harga : integer;
    stok  : integer;
  end;
  TDaftar = array[1..10] of Barang;

var
  daftar : TDaftar;
  n, i : integer;

function kategori(h : integer): string;
begin
  if h < 10000 then
    kategori := 'Murah'
  else if h < 50000 then
    kategori := 'Sedang'
  else
    kategori := 'Mahal';
end;

function totalNilaiStok(d : TDaftar; n : integer): longint;
var
  i : integer;
  total : longint;
begin
  total := 0;
  for i := 1 to n do
    total := total + longint(d[i].harga) * d[i].stok;
  totalNilaiStok := total;
end;

procedure tampilkanBarang(d : TDaftar; n : integer);
var i : integer;
begin
  writeln('No  Kode        Nama                            Harga       Stok  Kategori');
  for i := 1 to n do
    writeln(i:2, '  ', d[i].kode:10, '  ', d[i].nama:30, '  ',
            d[i].harga:10, '  ', d[i].stok:6, '  ', kategori(d[i].harga));
end;

begin
  clrscr;
  repeat
    write('Jumlah barang (1-10): ');
    readln(n);
  until (n >= 1) and (n <= 10);

  for i := 1 to n do
  begin
    writeln('--- Barang ke-', i, ' ---');
    write('Kode : '); readln(daftar[i].kode);
    write('Nama : '); readln(daftar[i].nama);
    repeat
      write('Harga: '); readln(daftar[i].harga);
    until daftar[i].harga >= 0;
    repeat
      write('Stok : '); readln(daftar[i].stok);
    until daftar[i].stok >= 0;
  end;

  writeln;
  tampilkanBarang(daftar, n);
  writeln('Total nilai stok: ', totalNilaiStok(daftar, n));
end.
