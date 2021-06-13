{$mode objfpc}{$H+}

unit TestCase1;

interface

uses FPCUnit, TestRegistry, TestUtils, Converter; 

type
  TTestCase1 = class(TTestCase)
  private
    FConverter: TConverter;
  protected
    procedure SetUp; override;
	procedure TearDown; override;
  published
    procedure ZeroTest;
	procedure OnePositiveDigitTest;
  end;
  
implementation

procedure TTestCase1.ZeroTest;
begin
  AssertEquals(0, FConverter.Convert(0));
end;

procedure TTestCase1.OnePositiveDigitTest;
begin
  AssertEquals(10, FConverter.Convert(8));
end;



procedure TTestCase1.SetUp;
begin
  FConverter:= TConverter.Create;
end;

procedure TTestCase1.TearDown;
begin
  FConverter.Free;
end;

initialization
  RegisterTest(TTestCase1);
end.
  

