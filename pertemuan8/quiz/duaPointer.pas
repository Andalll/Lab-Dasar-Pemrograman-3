program DuaPointer;

var
  x: Integer;
  p1, p2: ^Integer;

begin
  x := 10;

  p1 := @x;
  p2 := @x;

  WriteLn('Nilai variabel x      : ', x);
  WriteLn('Nilai yang ditunjuk p1: ', p1^);
  WriteLn('Nilai yang ditunjuk p2: ', p2^);
end.
