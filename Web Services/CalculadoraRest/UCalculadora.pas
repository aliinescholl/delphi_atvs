unit UCalculadora;

interface

uses
  UIcalculadora;

type
  TCalculadora = class(TInterfacedObject, ICalculadora)
    function Somar(aValor1, aValor2: Double):Double;
    function Subtrair(aValor1, aValor2: Double):Double;
    function Multiplicar(aValor1, aValor2: Double):Double;
    function Dividir(aValor1, aValor2: Double):Double;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

function TCalculadora.Dividir(aValor1, aValor2: Double): Double;
begin
  if (aValor2 = 0) and (aValor1 = 0) then
   raise Exception.Create('Resultado Indefinido');

  if aValor2 = 0 then
    raise Exception.Create('Impossível dividir por Zero');

  result := aValor1 / aValor2;
end;

function TCalculadora.Multiplicar(aValor1, aValor2: Double): Double;
begin
  result := aValor1 * aValor2;
end;

function TCalculadora.Somar(aValor1, aValor2: Double): Double;
begin
  result := aValor1 + aValor2;
end;

function TCalculadora.Subtrair(aValor1, aValor2: Double): Double;
begin
  result := aValor1 - aValor2;
end;

end.
