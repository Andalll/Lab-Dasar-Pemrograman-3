program matriks;
uses crt;

type
  TMatriks = array[1..5, 1..5] of integer;

var
  m : TMatriks;
  n, i : integer;

procedure bacaMatriks(var m : TMatriks; n : integer);
var i, j : integer;
begin
  for i := 1 to n do
    for j := 1 to n do
    begin
      write('Elemen [', i, ',', j, ']: ');
      readln(m[i, j]);
    end;
end;

procedure tampilkanMatriks(m : TMatriks; n : integer);
var i, j : integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(m[i, j]:4);
    writeln;
  end;
end;

function jumlahDiagonal(m : TMatriks; n : integer): integer;
var i, s : integer;
begin
  s := 0;
  for i := 1 to n do
    s := s + m[i, i];
  jumlahDiagonal := s;
end;

function jumlahBaris(m : TMatriks; n, baris : integer): integer;
var j, s : integer;
begin
  s := 0;
  for j := 1 to n do
    s := s + m[baris, j];
  jumlahBaris := s;
end;

procedure transpose(var m : TMatriks; n : integer);
var i, j, temp : integer;
begin
  for i := 1 to n do
    for j := i + 1 to n do
    begin
      temp := m[i, j];
      m[i, j] := m[j, i];
      m[j, i] := temp;
    end;
end;

begin
  clrscr;
  repeat
    write('Ukuran matriks N (1-5): ');
    readln(n);
  until (n >= 1) and (n <= 5);

  bacaMatriks(m, n);

  writeln;
  writeln('Matriks asli:');
  tampilkanMatriks(m, n);

  writeln('Jumlah diagonal utama: ', jumlahDiagonal(m, n));

  for i := 1 to n do
    writeln('Jumlah baris ', i, ': ', jumlahBaris(m, n, i));

  transpose(m, n);
  writeln;
  writeln('Hasil transpose:');
  tampilkanMatriks(m, n);
end.
