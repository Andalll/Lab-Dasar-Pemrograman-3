program PembelianTiketBioskop;
uses crt;

var
  jenisFilm, hari, jumlahTiket: integer;
  hargaSatuan, hargaTambahan: real;
  totalHarga, persenDiskon, nominalDiskon, totalBayar: real;

begin
  clrscr;
  writeln('1.Reguler');
  writeln('2.3D');
  writeln('3.IMAX');
  write('Masukkan Jenis Film : ');
  readln(jenisFilm);
  writeln('1.Senin-Kamis');
  writeln('2.Jumat');
  writeln('3.Sabtu-Minggu');
  write('Masukkan Hari: ');
  readln(hari);
  write('Masukkan Jumlah Tiket: ');
  readln(jumlahTiket);

  case jenisFilm of
    1: hargaSatuan := 30000;
    2: hargaSatuan := 45000;
    3: hargaSatuan := 60000;
  else
    hargaSatuan := 0;
  end;

  case hari of
    1: hargaTambahan := 0;
    2: hargaTambahan := 5000;
    3: hargaTambahan := 10000;
  else
    hargaTambahan := 0;
  end;

  totalHarga := (hargaSatuan + hargaTambahan) * jumlahTiket;

  if totalHarga >= 200000 then
    persenDiskon := 0.10
  else if totalHarga >= 100000 then
    persenDiskon := 0.05
  else
    persenDiskon := 0.0;

  nominalDiskon := totalHarga * persenDiskon;
  totalBayar := totalHarga - nominalDiskon;

  writeln;
  writeln('Pembayaran');
  writeln('Harga Awal  : Rp ', totalHarga:0:0);
  writeln('Diskon      : Rp ', nominalDiskon:0:0);
  writeln('Total Bayar : Rp ', totalBayar:0:0);
  readln;
end.