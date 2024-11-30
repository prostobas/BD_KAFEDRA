unit Proverka;

interface

implementation
function IsOnlyLetters(const Str: string): Boolean;
var
  I: Integer;
  Ch: Char;
begin
  Result := False;
  for I := 1 to Length(Str) do
  begin
    Ch := Str[I];
    // можно использовать условие дл€ проверки наличи€ специальных символов
    if (Ch in ['ј'..'я', 'а'..'€', '0'..'9']) then
    begin
      Result := True;
      Exit;
    end;
  end;
end;
end.
