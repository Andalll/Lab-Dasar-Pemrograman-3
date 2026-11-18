program HasilStudiMahasiswa;
uses crt;
type
  TMataKuliah = record
    NamaMK: string;
    SKS: integer;
    Nilai: string;
    NilaiAngka: Real;
  end;

  TMahasiswa = record
    Nama: string;
    NIM: string;
    JumlahMK: integer;
    MataKuliah: array[1..20] of TMataKuliah;
    IPK: Real;
  end;

const
  MaxMhs = 100;

var
  Mhs: array[1..MaxMhs] of TMahasiswa;
  JumlahMhs: integer;
  i, j: integer;
  TotalSKS, TotalBobot: Real;

function KonversiNilai(Grade: string): Real;
begin
  if Grade = 'A' then KonversiNilai := 4.0
  else if Grade = 'B+' then KonversiNilai := 3.5
  else if Grade = 'B' then KonversiNilai := 3.0
  else if Grade = 'C+' then KonversiNilai := 2.5
  else if Grade = 'C' then KonversiNilai := 2.0
  else if Grade = 'D' then KonversiNilai := 1.0
  else if Grade = 'E' then KonversiNilai := 0.0
  else KonversiNilai := 0.0;
end;

begin
  clrscr;
  Write('Masukkan jumlah mahasiswa: ');
  Readln(JumlahMhs);

  for i := 1 to JumlahMhs do
  begin
    Write('Nama mahasiswa ke-', i, ': ');
    Readln(Mhs[i].Nama);
    Write('NIM: ');
    Readln(Mhs[i].NIM);
    Write('Jumlah mata kuliah: ');
    Readln(Mhs[i].JumlahMK);

    TotalSKS := 0;
    TotalBobot := 0;

    for j := 1 to Mhs[i].JumlahMK do
    begin
      Write('Mata kuliah ke-', j, ' nama: ');
      Readln(Mhs[i].MataKuliah[j].NamaMK);
      Write('SKS: ');
      Readln(Mhs[i].MataKuliah[j].SKS);
      Write('Nilai: ');
      Readln(Mhs[i].MataKuliah[j].Nilai);

      Mhs[i].MataKuliah[j].NilaiAngka := KonversiNilai(Mhs[i].MataKuliah[j].Nilai);

      TotalSKS := TotalSKS + Mhs[i].MataKuliah[j].SKS;
      TotalBobot := TotalBobot + (Mhs[i].MataKuliah[j].SKS * Mhs[i].MataKuliah[j].NilaiAngka);
    end;

    if TotalSKS > 0 then
      Mhs[i].IPK := TotalBobot / TotalSKS
    else
      Mhs[i].IPK := 0;
  end;

  for i := 1 to JumlahMhs do
  begin
    Writeln;
    Writeln('Mahasiswa ', i);
    Writeln('Nama: ', Mhs[i].Nama);
    Writeln('NIM: ', Mhs[i].NIM);
    Writeln('IPK: ', Mhs[i].IPK:0:2);
    Writeln('Daftar Mata Kuliah:');
    for j := 1 to Mhs[i].JumlahMK do
    begin
      Writeln('  ', Mhs[i].MataKuliah[j].NamaMK, ' (SKS: ', Mhs[i].MataKuliah[j].SKS, ', Nilai: ', Mhs[i].MataKuliah[j].Nilai, ')');
    end;
    Readln;
  end;
end.
