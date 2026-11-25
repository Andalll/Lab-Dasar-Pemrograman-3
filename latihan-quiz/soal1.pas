program nilaiMahasiswa;
uses crt;

type
  TNilai = array[1..100] of integer;

var
  i, n, nilaiMaks, nilaiMin : integer;
  daftarNilai : TNilai;
  predikat : char;

function hitungRata(n : integer; nilai : TNilai): real;
var
  i, jumlah : integer;
begin
  jumlah := 0;
  for i := 1 to n do
    jumlah := jumlah + nilai[i];
  hitungRata := jumlah / n;
end;

begin
  clrscr;
  repeat
    write('Masukkan jumlah nilai (1-100): ');
    readln(n);
  until (n >= 1) and (n <= 100);

  for i := 1 to n do
  begin
    repeat
      write('Masukkan nilai ke-', i, ' (0-100): ');
      readln(daftarNilai[i]);
    until (daftarNilai[i] >= 0) and (daftarNilai[i] <= 100);
  end;

  writeln('Rata-rata nilai: ', hitungRata(n, daftarNilai):0:2);

  nilaiMaks := daftarNilai[1];
  nilaiMin := daftarNilai[1];
  for i := 2 to n do
  begin
    if daftarNilai[i] > nilaiMaks then
      nilaiMaks := daftarNilai[i];
    if daftarNilai[i] < nilaiMin then
      nilaiMin := daftarNilai[i];
  end;
  writeln('Nilai tertinggi: ', nilaiMaks);
  writeln('Nilai terendah : ', nilaiMin);

  writeln('Predikat:');
  for i := 1 to n do
  begin
    case daftarNilai[i] div 10 of
      10, 9 : predikat := 'A';
      8     : predikat := 'B';
      7     : predikat := 'C';
      6     : predikat := 'D';
    else
      predikat := 'E';
    end;
    writeln('Nilai ', i, ': ', daftarNilai[i], ' -> ', predikat);
  end;
end.
