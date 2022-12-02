unit Tools;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Graphics, StdCtrls, LCLIntf;

function FixPath(Path: string): string;
function isNumber(S: string): boolean;
function FindItemInListBox(lb: TListBox; Find: string): integer;
function ColorToRgbStr(C: TColor): string;
function RgbStrToColor(S: string): TColor;
procedure Split(Delimiter: char; Str: string; ListOfStrings: TStrings);
function TitleCase(S: string): string;
function isAlpha(ch: char): boolean;

var
  RecentPath: string;
  AppPath: string;
  AppSmpleFile: string;
  ButtonPress: integer;
  EdFontName: string;
  EdFontSize: integer;
  EdBk: TColor;

implementation

function isAlpha(ch: char): boolean;
begin
  Result := cH in ['a'..'z', 'A'..'Z'];
end;

procedure Split(Delimiter: char; Str: string; ListOfStrings: TStrings);
begin
  ListOfStrings.Clear;
  ListOfStrings.Delimiter := Delimiter;
  ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
  ListOfStrings.DelimitedText := Str;
end;

function ColorToRgbStr(C: TColor): string;
begin
  Result := IntToStr(GetRValue(C)) + ',' + IntToStr(GetGValue(C)) +
    ',' + IntToStr(GetBValue(C));
end;

function RgbStrToColor(S: string): TColor;
var
  sRgb: TStringList;
begin
  sRgb := TStringList.Create;
  //Split the string
  Split(',', S, sRgb);

  if sRgb.Count < 2 then
  begin
    Result := clWhite;
  end
  else
  begin
    Result := RGBToColor(StrToInt(srgb[0]), StrToInt(srgb[1]), StrToInt(srgb[2]));
  end;
end;

function FindItemInListBox(lb: TListBox; Find: string): integer;
var
  X, idx: integer;
begin
  idx := 0;
  for X := 0 to lb.Items.Count - 1 do
  begin
    if lowercase(lb.Items[X]) = lowercase(Find) then
    begin
      idx := X;
      Break;
    end;
  end;
  Result := idx;
end;

function isNumber(S: string): boolean;
var
  X: integer;
  Flag: boolean;
begin
  Flag := True;
  for X := 1 to Length(S) do
  begin
    if not (S[X] in ['0'..'9']) then
    begin
      Flag := False;
      Break;
    end;
  end;
  Result := Flag;
end;

function FixPath(Path: string): string;
begin
  if rightstr(Path, 1) <> PathDelim then
  begin
    Result := Path + PathDelim;
  end
  else
  begin
    Result := Path;
  end;
end;

function TitleCase(S: string): string;
var
  i: integer;
  t: string;
begin
  for i := 2 to length(S) do
  begin
    if (not (IsAlpha(S[I - 1]))) then
      S[i] := UpCase(S[i])
    else
    begin
      t := LowerCase(S[i]);
      S[i] := t[1];
    end;
  end;

  if Length(S) > 0 then
  begin
    S[1] := UpCase(S[1]);
  end;

  Result := S;
end;

end.
