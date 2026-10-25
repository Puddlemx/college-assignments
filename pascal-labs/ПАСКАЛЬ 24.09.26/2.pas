var
  mat: array[1..20, 1..20] of integer;
  n, m, i, j: integer;
  cool, cawx: integer;

begin
  write('Введите размерность mat: '); 
  readln(n);
  readln(m);

  writeln('Введите элементы массива:');
  for i := 1 to n do
    for j := 1 to m do
      readln(mat[i, j]);

  writeln('Исходная матрица:');
  for i := 1 to n do
  begin
    for j := 1 to m do
      write(mat[i, j]:5);
    writeln;
  end;

  for i := 1 to n do
  begin
    cool := 0;
    cawx := 0;
    for j := 1 to m do
    begin
      if (mat[i, j] > 0) and (cool = 0) then
         cool := j;
      if (mat[i, j] < 0) and (cawx = 0) then
         cawx := j;
    end;

    write('Строка ', i, ': ');
    if (cool > 0) and ((cawx = 0) or (cool < cawx))
    then
      writeln('раньше положительное')
    else if cawx > 0 then
      writeln('раньше отрицательное')
    else
      writeln('нет положительных и отрицательных чисел');
  end;

  readln;
end.