type
  tstock = ^pstock;
  pstock = record
    name: string[30];    
    price: real;          
    count: integer;      
    pr: integer;         
    x: tstock;
  end;

function inputprod: tstock;
var p: tstock;
begin
  new(p);
  write('Наименование: '); readln(p^.name);
  write('Цена: '); readln(p^.price);
  write('Количество: '); readln(p^.count);
  repeat
    write('Надбавка % (5, 10, 15, 20, 30, 35): '); readln(p^.pr);
  until p^.pr in [5, 10, 15, 20, 30, 35];
  p^.x := nil;
  inputprod := p;
end;

function inputlist: tstock;
var f, l: tstock; i, n: integer;
begin
  f := nil;
  write('Количество товаров: '); readln(n);
  for i := 1 to n do
    if f = nil then
    begin
      f := inputprod;
      l := f;
    end
    else
    begin
      l^.x := inputprod;
      l := l^.x;
    end;
  inputlist := f;
end;

procedure outprod(p: tstock);
begin
  writeln(p^.name, '  ', p^.price:0:2, '  ', p^.count, '  ',
          p^.pr, '%  цена с надбавкой: ', p^.price * (1 + p^.pr / 100):0:2);
end;

procedure outlist(l: tstock);
begin
  while l <> nil do
  begin
    outprod(l);
    l := l^.x;
  end;
end;

procedure findname(l: tstock);
var s: string; b: boolean;
begin
  write('Введите наименование: '); readln(s);
  b := false;
  while l <> nil do
  begin
    if l^.name = s then
    begin
      outprod(l);
      b := true;
    end;
    l := l^.x;
  end;
  if not b then writeln('Такого товара нет');
end;

procedure findprice(l: tstock);
var c: real; b: boolean;
begin
  write('Введите цену: '); readln(c);
  b := false;
  while l <> nil do
  begin
    if l^.price = c then
    begin
      outprod(l);
      b := true;
    end;
    l := l^.x;
  end;
  if not b then writeln('Товаров с такой ценой нет');
end;

var
  stock: tstock;
  c: integer;
begin
  stock := inputlist;
  repeat
    writeln;
    writeln('1 - вывести все товары');
    writeln('2 - поиск по наименованию');
    writeln('3 - поиск по цене');
    writeln('0 - выход');
    write('Выбор: '); readln(c);
    case c of
      1: outlist(stock);
      2: findname(stock);
      3: findprice(stock);
    end;
  until c = 0;
end.