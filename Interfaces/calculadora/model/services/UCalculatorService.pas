unit UCalculatorService;

interface

type
  ICalculatorService = interface
    ['{C42DCD06-4706-4227-8700-AAA400AB337C}']
    function Sum(aNum1, aNum2 : Double):Double;
    function Substract(aNum1, aNum2 : Double):Double;
    function Multiply(aNum1, aNum2 : DOuble):Double;
    function Divide(aNum1, aNum2 : Double):Double;
  end;

implementation

end.
