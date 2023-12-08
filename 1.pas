program zad1;
var
arr: array of Integer;
n, i, j: Integer;
found: Boolean;
begin
Write('Введите количество элементов в массиве: ');
ReadLn(n);
SetLength(arr, n);
WriteLn('Введите элементы массива:');
for i := 0 to n-1 do
begin
ReadLn(arr[i]);
end;
found := False;
for i := 0 to n-2 do
begin
for j := i+1 to n-1 do
begin
if (arr[i] * arr[j]) <= (arr[i] + arr[j]) then
begin
WriteLn('Найдены элементы: ', arr[i], ' и ', arr[j]);
found := True;
Break;
end;
end;
if found then
  begin
    Writeln('Найдены элементы: ', arr[i], ' и ', arr[j]);
    Writeln('Их произведение = ', arr[i] * arr[j]);
    Writeln('Их сумма = ', arr[i] + arr[j]);
  end
  else
    Writeln('Подходящая пара элементов не найдена.');
Break;
end;
if not found then
WriteLn('Таких элементов не найдено');
end.