program Cek_Prima;

var
  angka: integer;

function Prima(x: integer): boolean;
var
  i: integer;
  p: boolean;
begin
  if x < 2 then
    p := false
  else
  begin
    p := true;
    for i := 2 to x - 1 do
      if x mod i = 0 then
        p := false;
  end;
  Prima := p;
end;

begin
  write('Angka : ');
  readln(angka);
  if Prima(angka) then
    writeln('Prima')
  else
    writeln('Non-Prima');
end.
