program zad2;;
var
  s, sub: string;
  i, j: integer;
  subPos: boolean;
begin
  Write('Введите исходную строку: ');
  ReadLn(s);
  Write('Введите подстроку: ');
  ReadLn(sub);
  subPos := False;
  i := 1;
  j := 1;
  while (i <= Length(s)) and (j <= Length(sub)) do
  begin
    if s[i] = sub[j] then
    begin
      j := j + 1;
      if j > Length(sub) then
      begin
        subPos := True;
        Break;
      end;
    end;
    i := i + 1;
  end;
  if subPos then
    WriteLn('Подстрока является подпоследовательностью исходной строки.')
  else
    WriteLn('Подстрока не является подпоследовательностью исходной строки.');
end.