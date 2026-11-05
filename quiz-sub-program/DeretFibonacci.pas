program Deret_Fibonacci;

var
  n: integer;

procedure Fibonacci(jumlah: integer);
var
  a, b, c, i: integer;
begin
  a := 1;
  b := 1;
  write('Deret Fibonacci : ');
  for i := 1 to jumlah do
  begin
    write(a, ' ');
    c := a + b;
    a := b;
    b := c;
  end;
  writeln;
end;

begin
  write('Nilai : ');
  readln(n);
  Fibonacci(n);
end.
