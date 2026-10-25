var mat: array [1..20, 1..20] of real; 
  mas: array [1..20] of integer; 
  n, m, i, j: integer; 
  max, mini: integer; 
begin 
  write('Введите размерность матрицы: '); 
  readln(n);
  readln(m);
  writeln; 
  
  writeln('Введите элементы матрицы:'); 
  for i := 1 to n do 
  begin 
    for j := 1 to m do 
    begin 
      write('a[', i, ',', j, '] = '); 
      readln(mat[i, j]); 
    end; 
  end; 
  
  writeln('Вывод матрицы:'); 
  for i := 1 to n do 
  begin 
    for j := 1 to m do 
    begin 
      write(mat[i, j]:3);
    end; 
    writeln; 
  end; 
  
  for j := 1 to m do 
  begin 
    mas[j] := 0; 
    for i := 1 to n do 
    begin 
      if mat[i, j] > 0 then 
        mas[j] := mas[j] + 1; 
    end; 
  end; 
  
  writeln; 
  writeln('Количество положительных элементов в каждом столбце:'); 
  for j := 1 to m do 
  begin 
    write(mas[j], ' '); 
  end; 
  writeln; 
  
  j := m;
  while j > 1 do 
  begin 
    max := mas[1]; 
    mini := 1; 
    for i := 2 to j do 
      if mas[i] > max then 
      begin 
        max := mas[i]; 
        mini := i; 
      end; 
    mas[mini] := mas[j]; 
    mas[j] := max; 
    j := j - 1; 
  end; 
  
  writeln('Отсортированный массив по возрастанию:'); 
  for j := 1 to m do 
  begin 
    write(mas[j], ' '); 
  end; 
  writeln; 
end.