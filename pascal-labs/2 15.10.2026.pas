program stek;

type
  point = ^zap;
  zap = record
    inf: integer;
    next: point;
  end;

var
  head, p: point;
  x, n: integer;

begin
  head := nil;
  n := -1;

  while n <> 0 do
  begin
    writeln;
    writeln('1 - добавить элемент');
    writeln('2 - удалить элемент');
    writeln('3 - вывести стек');
    writeln('0 - выход');
    readln(n);

    if n = 1 then
    begin
      write('Введите число: ');
      readln(x);
      new(p);
      p^.inf := x;
      p^.next := head;   { новый элемент ссылается на вершину }
      head := p;         { теперь он сам вершина }
    end;

    if n = 2 then
    begin
      if head = nil then
        writeln('Стек пустой')
      else
      begin
        p := head;
        writeln('Удалили ', p^.inf);
        head := head^.next;
        dispose(p);
      end;
    end;

    if n = 3 then
    begin
      if head = nil then
        writeln('Стек пустой')
      else
      begin
        p := head;
        write('Стек: ');
        while p <> nil do
        begin
          write(p^.inf, ' ');
          p := p^.next;
        end;
        writeln;
      end;
    end;
  end;

  { чистим память }
  while head <> nil do
  begin
    p := head;
    head := head^.next;
    dispose(p);
  end;
end.