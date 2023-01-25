unit UCalculatorServiceDefault;

interface

uses
  UCalculatorService;

type
  TCalculatorServiceDefault = class(TInterfacedObject, ICalculatorService)
    function Sum(aNum1, aNum2 : Double):Double;
    function Substract(aNum1, aNum2 : Double):Double;
    function Multiply(aNum1, aNum2 : DOuble):Double;
    function Divide(aNum1, aNum2 : Double):Double;
  end;

implementation

{ TCalculatorServiceDefault }

function TCalculatorServiceDefault.Divide(aNum1, aNum2: Double): Double;
begin
  result := aNum1/aNum2;
end;

function TCalculatorServiceDefault.Multiply(aNum1, aNum2: DOuble): Double;
begin
  result := aNum1 * aNum2;
end;

function TCalculatorServiceDefault.Substract(aNum1, aNum2: Double): Double;
begin
  result := aNum1 - aNum2;
end;

function TCalculatorServiceDefault.Sum(aNum1, aNum2: Double): Double;
begin
  result := aNum1 + aNum2;
end;

end.
