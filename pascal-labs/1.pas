type
  tl = ^pl;
  pl = record
    d: integer;
    x: tl;
  end;

  td = ^pd;
  pd = record
    d: integer;
    v, x: td;
  end;


function inputel: tl;
var p: tl;
begin
  new(p);
  write('Элемент: ');
  readln(p^.d);
  p^.x := nil;
  inputel := p;
end;

function inputlist: tl;
var f, l: tl;
    i, n: integer;
begin
  f := nil;
  l := nil;
  write('Количество элементов однонаправленного списка: ');
  readln(n);
  for i := 1 to n do
    if f = nil then begin
      f := inputel;
      l := f;
    end else begin
      l^.x := inputel;
      l := l^.x;
    end;
  inputlist := f;
end;

procedure outel(p: tl);
begin
  writeln(p^.d);
end;

procedure outlist(l: tl);
begin
  write('Список: ');
  while l <> nil do begin
    write(l^.d, ' ');
    l := l^.x;
  end;
  writeln;
end;

procedure findl(l: tl);
var n: integer;
    b: boolean;
begin
  write('Найти в однонаправленном: ');
  readln(n);
  b := false;
  while l <> nil do begin
    if l^.d = n then begin
      write('Найдено: ');
      outel(l);
      b := true;
    end;
    l := l^.x;
  end;
  if not b then writeln('Такого нет');
end;

procedure dell(var l: tl);
var n: integer;
    p, q: tl;
    deleted: boolean;
begin
  write('Удалить из однонаправленного: ');
  readln(n);
  if l = nil then exit;
  deleted := false;
  while (l <> nil) and (l^.d = n) do begin
    p := l;
    l := l^.x;
    dispose(p);
    deleted := true;
  end;
  if l <> nil then begin
    q := l;
    while q^.x <> nil do begin
      if q^.x^.d = n then begin
        p := q^.x;
        q^.x := p^.x;
        dispose(p);
        deleted := true;
      end else begin
        q := q^.x;
      end;
    end;
  end;
  if not deleted then writeln('Такого нет');
end;


procedure insertl(var l: tl);
var
  target, n: integer;
  curr, p: tl;
  found: boolean;
begin
  if l = nil then begin
    writeln('Список пуст, добавляем как первый элемент:');
    l := inputel;
    exit;
  end;
  
  write('После какого элемента вставить в однонаправленный? ');
  readln(target);
  
  curr := l;
  found := false;
  
  
  while curr <> nil do begin
    if curr^.d = target then begin
      found := true;
      break;
    end;
    if curr^.x = nil then break; 
    curr := curr^.x;
  end;
  
  if not found then 
    writeln('Элемент не найден. Добавляем в конец списка:')
  else 
    writeln('Элемент найден. Создаем новый элемент:');
    
  p := inputel;
  p^.x := curr^.x;
  curr^.x := p;
end;




function inputeld: td;
var p: td;
begin
  new(p);
  write('Элемент: ');
  readln(p^.d);
  p^.x := nil;
  p^.v := nil;
  inputeld := p;
end;

function inputlistd(var t: td): td;
var f: td;
    i, n: integer;
begin
  f := nil;
  t := nil;
  write('Количество элементов двунаправленного списка: ');
  readln(n);
  for i := 1 to n do
    if f = nil then begin
      f := inputeld;
      t := f;
    end else begin
      t^.x := inputeld;
      t^.x^.v := t;
      t := t^.x;
    end;
  inputlistd := f;
end;

procedure outlistd(f, t: td);
begin
  write('Вперёд: ');
  while f <> nil do begin
    write(f^.d, ' ');
    f := f^.x;
  end;
  writeln;
  write('Назад: ');
  while t <> nil do begin
    write(t^.d, ' ');
    t := t^.v;
  end;
  writeln;
end;

procedure findd(f: td);
var n: integer;
    b: boolean;
begin
  write('Найти в двунаправленном: ');
  readln(n);
  b := false;
  while f <> nil do begin
    if f^.d = n then begin
      writeln('Найдено: ', f^.d);
      b := true;
      break;
    end;
    f := f^.x;
  end;
  if not b then writeln('Такого нет');
end;

procedure deld(var f, t: td);
var n: integer;
    p, nextNode: td;
    deleted: boolean;
begin
  write('Удалить из двунаправленного: ');
  readln(n);
  p := f;
  deleted := false;
  while p <> nil do begin
    nextNode := p^.x;
    if p^.d = n then begin
      deleted := true;
      if p^.v <> nil then p^.v^.x := p^.x else f := p^.x;
      if p^.x <> nil then p^.x^.v := p^.v else t := p^.v;
      dispose(p);
    end;
    p := nextNode;
  end;
  if not deleted then writeln('Такого нет');
end;


procedure insertd(var f, t: td);
var
  target: integer;
  curr, p: td;
  found: boolean;
begin
  if f = nil then begin
    writeln('Список пуст, добавляем как первый элемент:');
    f := inputeld;
    t := f;
    exit;
  end;
  
  write('После какого элемента вставить в двунаправленный? ');
  readln(target);
  
  curr := f;
  found := false;
  
  while curr <> nil do begin
    if curr^.d = target then begin
      found := true;
      break;
    end;
    if curr^.x = nil then break;
    curr := curr^.x;
  end;
  
  if not found then 
    writeln('Элемент не найден. Добавляем в конец списка:')
  else 
    writeln('Элемент найден. Создаем новый элемент:');
    
  p := inputeld;
  
  p^.x := curr^.x;
  p^.v := curr;
  
  if curr^.x <> nil then
    curr^.x^.v := p
  else
    t := p; 
    
  curr^.x := p;
end;


var
  s: tl;
  f, t: td;
begin
  writeln('Однонаправленный список');
  s := inputlist;
  outlist(s);
  findl(s);
  insertl(s); 
  outlist(s);
  dell(s);
  outlist(s);
  
  writeln;
  writeln('Двунаправленный список ');
  f := inputlistd(t);
  outlistd(f, t);
  findd(f);
  insertd(f, t); 
  outlistd(f, t);
  deld(f, t);
  outlistd(f, t);
  
  readln;
end.