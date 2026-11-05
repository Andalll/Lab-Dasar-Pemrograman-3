program dengan_parameter;
uses crt;
var
  nama : string;

procedure sayHi(name : string);
begini
  writeln('Selamat datang ', name);
end;

begin
  write('Masukkan nama: ');
  readln(nama);
  sayHi(nama);
end.
