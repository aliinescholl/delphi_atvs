{ Invokable interface IICalculadora }

unit ICalculadoraIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type
  { Invokable interfaces must derive from IInvokable }
  IICalculadora = interface(IInvokable)
  ['{EF3456FB-FF93-470B-9C12-1F3685EBE29E}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function Somar(aNum1, aNum2: Double): Double; stdcall;
    function Subtrair(aNum1, aNum2: Double): Double; stdcall;
    function Dividir(aNum1, aNum2: Double): Double; stdcall;
    function Multiplicar(aNum1, aNum2: Double): Double; stdcall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(IICalculadora));

end.
