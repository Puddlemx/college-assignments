var mas: array[1..15] of real; 
  n, i, j: integer; 
  ob: real; 
begin
  write('Введите количество элементов массива (до 15): '); 
  readln(n); 
  
  writeln('Введите элементы массива:'); 
  for i := 1 to n do 
  begin 
    write('a[', i, ']='); 
    readln(mas[i]); 
  end; 
  
  writeln('Исходный массив:'); 
  for i := 1 to n do 
    write(mas[i], ', '); 
  writeln; 

   for i := 1 to n - 1 do
    for j := 1 to n - i do
      if mas[j] > mas[j + 1] then 
      begin
        ob := mas[j];
        mas[j] := mas[j + 1];
        mas[j + 1] := ob;
      end;

  writeln('Отсортированный массив:');
  for i := 1 to n do 
    write(mas[i], ', '); 
  writeln;

  for i := 1 to n do 
    mas[i] := mas[i] / 2; 
    
  writeln('Массив после деления на 2:'); 
  for i := 1 to n do 
    write(mas[i], ', '); 
  writeln; 
end.