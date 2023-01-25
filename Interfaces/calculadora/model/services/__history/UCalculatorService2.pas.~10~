unit UCalculatorService2;

interface

uses
  UCalculatorService;

type
  TTypeCalc = (tpSum, tpSub, tpMul, tpDiv);

  TCalculatorService = class
    private
    FNum1: Double;
    FNum2 : Double;

    FCalc: ICalculatorService;

    function GetNum1: Double;
    function GetNum2: Double;

    procedure SetNum1(const Value: Double);
    procedure SetNum2(const Value: Double);

    public
    constructor Create(const aNum1, aNum2 : Double;
                        aCalc: ICalculatorService);

    function processCalc(aTypeCalc: TTypeCalc):Double;

    property Num1: Double read GetNum1 write SetNum1;
    property Num2: Double read GetNum2 write SetNum2;
  end;

implementation

uses
  UCalculatorServiceDefault;

{ TCalculatorService }

constructor TCalculatorService.Create(const aNum1, aNum2: Double;
  aCalc: ICalculatorService);
begin
  Fnum1 := aNum1;
  Fnum2 := aNum2;
  FCalc := aCalc;
end;

function TCalculatorService.GetNum1: Double;
begin
  result := FNum1;
end;

function TCalculatorService.GetNum2: Double;
begin
  result := FNum2;
end;

function TCalculatorService.processCalc(aTypeCalc: TTypeCalc):DOuble;
begin
  case aTypeCalc of
   tpSum:
    result := FCalc.Sum(Num1, Num2);

   tpSub:
    result := FCalc.Substract(Num1, Num2);

   tpMul:
    result := FCalc.Multiply(Num1, Num2);

   tpDiv:
    result := FCalc.Divide(Num1, Num2);
  end;
end;

procedure TCalculatorService.SetNum1(const Value: Double);
begin
  FNum1 := Value;
end;

procedure TCalculatorService.SetNum2(const Value: Double);
begin
  FNum2 := Value;
end;

end.
