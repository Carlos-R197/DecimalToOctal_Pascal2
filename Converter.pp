{$mode objfpc}{$H+}

unit Converter;

interface

type
  TConverter = class
  public
    function Convert(Number: Integer): Integer;
  end;
  
implementation
  
function TConverter.Convert(Number: Integer): Integer;
var
  Remainder: Integer;
  OctalNum: Integer;
  CurrentVal: Integer;
begin
  OctalNum:= 0;
  CurrentVal:= 1;
  
  while Number <> 0 do
  begin
    Remainder:= Number mod 8;
	OctalNum:= OctalNum + (Remainder * CurrentVal);
	Number:= Number div 8;
	CurrentVal:= CurrentVal * 10;
  end;
  
  Result:= OctalNum;
end;

end.
  