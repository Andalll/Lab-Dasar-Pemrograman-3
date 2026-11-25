program daftarBilangan;
uses crt;

const
  MAKS = 50;

type
  TArr = array[1..MAKS] of integer;

var
  data : TArr;
  n, pilihan, x, idx : integer;

procedure tampilkanData(d : TArr; n : integer);
var i : integer;
begin
  if n = 0 then
    writeln('Data kosong.')
  else
  begin
    for i := 1 to n do
      write(d[i], ' ');
    writeln;
  end;
end;

function cariData(d : TArr; n, x : integer): integer;
var i : integer;
begin
  cariData := -1;
  for i := 1 to n do
    if d[i] = x then
    begin
      cariData := i;
      exit;
    end;
end;

procedure hapusData(var d : TArr; var n : integer; idx : integer);
var i : integer;
begin
  for i := idx to n - 1 do
    d[i] := d[i + 1];
  n := n - 1;
end;

begin
  n := 0;
  repeat
    clrscr;
    writeln('=== MENU ===');
    writeln('1. Tambah data');
    writeln('2. Tampilkan data');
    writeln('3. Cari data');
    writeln('4. Hapus data');
    writeln('5. Keluar');

    repeat
      write('Pilihan: ');
      readln(pilihan);
      if (pilihan < 1) or (pilihan > 5) then
        writeln('Pilihan harus 1 sampai 5!');
    until (pilihan >= 1) and (pilihan <= 5);

    case pilihan of
      1: begin
           if n = MAKS then
             writeln('Data sudah penuh!')
           else
           begin
             write('Bilangan: ');
             readln(x);
             n := n + 1;
             data[n] := x;
             writeln('Data berhasil ditambahkan.');
           end;
         end;
      2: tampilkanData(data, n);
      3: begin
           write('Cari bilangan: ');
           readln(x);
           idx := cariData(data, n, x);
           if idx = -1 then
             writeln('Data tidak ditemukan.')
           else
             writeln('Ditemukan di posisi ', idx);
         end;
      4: begin
           if n = 0 then
             writeln('Data kosong, tidak ada yang dihapus.')
           else
           begin
             write('Hapus bilangan: ');
             readln(x);
             idx := cariData(data, n, x);
             if idx = -1 then
               writeln('Data tidak ditemukan.')
             else
             begin
               hapusData(data, n, idx);
               writeln('Data berhasil dihapus.');
             end;
           end;
         end;
    end;

    if pilihan <> 5 then
    begin
      writeln('Tekan Enter untuk lanjut...');
      readln;
    end;
  until pilihan = 5;
end.
