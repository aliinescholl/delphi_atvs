unit UCalculadora;

interface

type
  TOperacao = (opSomar, opSubtrair, opMultiplicar, opDividir);

  Tcalculadora = class
  public
  function Somar(aNum1, aNum2 : Double):Double;
  function Subtrair(aNum1, aNum2 : Double):Double;
  function Multiplicar(aNum1, aNum2 : Double):Double;
  function Dividir(aNum1, aNum2 : Double):Double;
  end;
implementation

uses
  System.SysUtils;

{ Tcalculadora }

function Tcalculadora.Dividir(aNum1, aNum2: Double): Double;
begin
  if (anum1 = 0) or (anum2 = 0) then
    raise Exception.Create('N�o � poss�vel dividir um n�mero por zero!');

  result := aNum1/aNum2;
end;

function Tcalculadora.Multiplicar(aNum1, aNum2: Double): Double;
begin
  result := aNum1 * aNum2;
end;

function Tcalculadora.Somar(aNum1, aNum2: Double): Double;
begin
  result := aNum1 + aNum2;
end;

function Tcalculadora.Subtrair(aNum1, aNum2: Double): Double;
begin
  result := aNum1 - aNum2;
end;

end.
