{ Invokable implementation File for TICalculadora which implements IICalculadora }

unit ICalculadoraImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, ICalculadoraIntf;

type

  { TICalculadora }
  TICalculadora = class(TInvokableClass, IICalculadora)
  public
    function Somar(aNum1, aNum2: Double): Double; stdcall;
    function Subtrair(aNum1, aNum2: Double): Double; stdcall;
    function Dividir(aNum1, aNum2: Double): Double; stdcall;
    function Multiplicar(aNum1, aNum2: Double): Double; stdcall;
  end;

implementation

uses
  System.SysUtils;

{ TICalculadora }

function TICalculadora.Dividir(aNum1, aNum2: Double): Double;
begin
  if aNum2 = 0 then
    raise Exception.Create('Imposs�vel fazer Divis�o por ZERO');

  result := aNum1 / aNum2;
end;

function TICalculadora.Multiplicar(aNum1, aNum2: Double): Double;
begin
  result := aNum1 * aNum2;
end;

function TICalculadora.Somar(aNum1, aNum2: Double): Double;
begin
  result := aNum1 + aNum2;
end;

function TICalculadora.Subtrair(aNum1, aNum2: Double): Double;
begin
  result := aNum1 - aNum2;
end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TICalculadora);
end.

