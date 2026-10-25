 var
  a: array[1..10] of integer;
  b: array[1..10] of integer;
  c: array[1..20] of integer;
  n1, n2, n, i, j, tuty: integer;

begin
  write('Количество элементов в первом массиве: ');
  readln(n1);
  writeln('Введите элементы первого массива: ');
  for i := 1 to n1 do
    read(a[i]);

  write('Количество элементов во втором массиве: ');
  readln(n2);
  writeln('Введите элементы второго массива:');
  for i := 1 to n2 do
    read(b[i]);

  n := 0;
  for i := 1 to n1 do
  begin
    n := n + 1;
    c[n] := a[i];
  end;
  for i := 1 to n2 do
  begin
    n := n + 1;
    c[n] := b[i];
  end;

  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if c[j] > c[j + 1] then
      begin
        tuty := c[j];
        c[j] := c[j + 1];
        c[j + 1] := tuty;
      end;

  writeln('Отсортированный объединённый массив:');
  for i := 1 to n do
    write(c[i], ' ');
  writeln;

  for i := 1 to n do
    if c[i] > 0 then
      c[i] := -c[i];

  writeln('Массив после замены положительных элементов на отрицательные:');
  for i := 1 to n do
    write(c[i], ' ');
  writeln;

  readln;
end.