{$mode objfpc}{$H+}

program DecimalToOctal;

uses ConsoleTestRunner, TestCase1, TestRegistry, TestUtils;

var
  A: TTestRunner;
  
begin
  DefaultFormat:= fPlain;
  DefaultRunAllTests:= True;
  A:= TTestRunner.Create(nil);
  try
    A.Initialize;
	A.Run;
  finally
    A.Free;
  end;
end.