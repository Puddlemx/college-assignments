var 
  mat: array[1..10, 1..10] of integer; 
  i, j, n, m: integer; 
begin 
  writeln('Введите размерность массива (строки и столбцы):'); 
  readln(n); 
  readln(m); 
  
  for i := 1 to n do 
  begin 
    for j := 1 to m do 
    begin 
      write('a[', i, ',', j, ']='); 
      readln(mat[i, j]); 
    end; 
  end; 
  
  writeln('Изначальная матрица:'); 
  for i := 1 to n do 
  begin 
    for j := 1 to m do 
    begin 
      write(mat[i, j], ' '); 
    end; 
    writeln; 
  end; 
  for i := 1 to n do 
  begin 
    for j := 1 to m do 
    begin 
      if mat[i, j] < 0 then 
        mat[i, j] := -1; 
    end; 
  end;
   writeln('Полученная матрица:'); 
  for i := 1 to n do 
  begin 
    for j := 1 to m do 
    begin 
      write(mat[i, j], ' '); 
    end; 
    writeln; 
  end; 
end.