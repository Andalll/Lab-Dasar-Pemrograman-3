program PemesananMakanan;
uses crt;

var
  kodeMakanan, jumlahPesanan, statusPelanggan: integer;
  hargaMakanan, totalHarga, persenDiskon, nominalDiskon, totalBayar: real;

begin
  clrscr;
  writeln('1.Nasi Goreng : Rp20.000');
  writeln('2.Mie Goreng : Rp18.000');
  writeln('3.Ayam Geprek : Rp25.000');
  writeln('4.Steak : Rp.50.000');
  write('Masukkan Kode Makanan: ');
  readln(kodeMakanan);
  write('Masukkan Jumlah Pesanan: ');
  readln(jumlahPesanan);
  writeln('1.Member');
  writeln('2.non-Member');
  write('Masukkan Status Pelanggan: ');
  readln(statusPelanggan);

  writeln;
  if jumlahPesanan <= 0 then
    writeln('Jumlah pesanan tidak valid')
  else if jumlahPesanan > 10 then
    writeln('Pesanan terlalu banyak')
  else
  begin
    case kodeMakanan of
      1: hargaMakanan := 20000;
      2: hargaMakanan := 18000;
      3: hargaMakanan := 25000;
      4: hargaMakanan := 50000;
    else
      hargaMakanan := 0;
    end;

    totalHarga := hargaMakanan * jumlahPesanan;

    if statusPelanggan = 1 then
    begin
      if totalHarga >= 100000 then
        persenDiskon := 0.15
      else if totalHarga >= 50000 then
        persenDiskon := 0.10
      else
        persenDiskon := 0.05;
    end
    else
    begin
      if totalHarga >= 100000 then
        persenDiskon := 0.05
      else
        persenDiskon := 0.0;
    end;

    nominalDiskon := totalHarga * persenDiskon;
    totalBayar := totalHarga - nominalDiskon;

    writeln('Pembayaran');
    writeln('Harga Makanan : Rp ', hargaMakanan:0:0);
    writeln('Total Harga : Rp ', totalHarga:0:0);
    writeln('Diskon : Rp ', nominalDiskon:0:0);
    writeln('Total Bayar : Rp ', totalBayar:0:0);
  end;

  readln;
end.