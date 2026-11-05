program kuis;
uses crt;
var
	nama :string;
	tugas, uts, uas, nilai_akhir : double;
begin
  clrscr;
  write('Masukkan nama: ');
  readln(nama);
  write('Masukkan nilai tugas: ');
  readln(tugas);
  write('Masukkan nilai UTS: ');
  readln(uts);
  write('Masukkan nilai UAS: ');
  readln(uas);

  nilai_akhir := (tugas * 0.3) + (uts * 0.3) + (uas * 0.4);
  writeln('Nama: ', nama);
  writeln('Nilai akhir: ',nilai_akhir);
  readln;
end.
