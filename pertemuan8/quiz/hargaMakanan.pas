program HargaMakanan;

var
  n, i: Integer;
  nama: array[1..100] of string;
  harga: array[1..100] of Integer;
  pMahal, pMurah: ^Integer;
  namaMahal, namaMurah: string;

begin
  Write('Jumlah makanan: ');
  ReadLn(n);

  for i := 1 to n do
  begin
    Write('Nama makanan ke-', i, ': ');
    ReadLn(nama[i]);
    Write('Harga makanan ke-', i, ': ');
    ReadLn(harga[i]);
  end;

  pMahal := @harga[1];
  pMurah := @harga[1];
  namaMahal := nama[1];
  namaMurah := nama[1];

  for i := 2 to n do
  begin
    if harga[i] > pMahal^ then
    begin
      pMahal := @harga[i];
      namaMahal := nama[i];
    end;

    if harga[i] < pMurah^ then
    begin
      pMurah := @harga[i];
      namaMurah := nama[i];
    end;
  end;

  WriteLn;
  WriteLn('Harga termahal: ', pMahal^, ', nama: ', namaMahal);
  WriteLn('Harga termurah: ', pMurah^, ', nama: ', namaMurah);
end.
