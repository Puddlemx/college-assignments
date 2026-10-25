var a: array[1..10] of integer;
i,n,p,min : integer;
begin
  write('Введите количество элементов (до 10) ');
  readln(n);
  for i:= 1 to n do
  begin;
    write('a[',i,']');
    readln(a[i]);
  end;
  min:=a[1];
  for i:=1 to n do
  begin;
    if min > a[i] then min:= a[i];
    p:=i;
  end;
  writeln('min=', min,'  его позиция=', p);
end.