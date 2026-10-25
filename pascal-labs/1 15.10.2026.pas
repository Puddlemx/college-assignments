const
  MaxN = 100;           
var
  st: array[1..MaxN] of integer; 
  top: integer;                     
  x, i, sum: integer;

procedure Push(a: integer);
begin
  if top = MaxN then
    writeln('Стек переполнен!')
  else
  begin
    top := top + 1;      
    st[top] := a;       
  end;
end;

begin
  top := 0;               


  writeln('Вводите числа (0 - конец ввода):');
  readln(x);
  while x <> 0 do
  begin
    Push(x);
    readln(x);
  end;

 
  if top = 0 then
    writeln('Стек пуст!')
  else
  begin
    sum := 0;
    for i := 1 to top do
      sum := sum + st[i];

    writeln('Элементы стека: ');
    for i := top downto 1 do     
      write(st[i], ' ');
    writeln;
    writeln('Сумма элементов = ', sum);
  end;

  readln;
end.