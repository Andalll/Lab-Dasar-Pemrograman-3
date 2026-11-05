program PenentuanBeasiswa;
uses crt;

var
  ipk: real;
  penghasilanOrtu: real;
  prestasi: integer;

begin
  clrscr;
  write('Masukkan IPK: ');
  readln(ipk);
  write('Masukkan Penghasilan Orang Tua: ');
  readln(penghasilanOrtu);
  write('Masukkan Jumlah Prestasi: ');
  readln(prestasi);

  writeln;
  if ipk < 2.75 then
    writeln('IPK Tidak Memenuhi Syarat')
  else if (ipk >= 3.75) and (penghasilanOrtu <= 5000000) and (prestasi >= 2) then
    writeln('Mendapatkan Beasiswa Penuh')
  else if (ipk >= 3.50) and (penghasilanOrtu <= 7000000) and (prestasi >= 1) then
    writeln('Mendapatkan Beasiswa Sebagian')
  else if penghasilanOrtu > 7000000 then
    writeln('Penghasilan Tidak Memenuhi Syarat')
  else
    writeln('Tidak Mendapatkan Beasiswa');

  readln;
end.