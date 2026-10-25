var a: array [1..15] of integer;
max,min,s,i,n: integer;
begin
  write('Введите колличество элементов массива (до 15) ');
  readln(n);
  for i:= 1 to n do
    begin;
    write('a[',i,']=');
     read(a[i]);
  end;
  max:=a[1];
  min:=a[1];
  for i:= 1 to n do
  begin;
  if a[i]>max then
    max:=a[i];
  end;
  writeln('Максимальный элемент= ', max);
   begin;
  if a[i]<min then
    min:=a[i];
  end;
  writeln('Минимальнай элемент= ', min);
  s:=max+min;
  writeln('Сумма максималього и минимального= ', s);
  end.
  