{ Invokable implementation File for TIHelloWorld which implements IIHelloWorld }

unit IHelloWorldImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, IHelloWorldIntf;

type

  { TIHelloWorld }
  TIHelloWorld = class(TInvokableClass, IIHelloWorld)
  public
    function echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function echoDouble(const Value: Double): Double; stdcall;
    function echoHelloWorld(const Value: String): String; stdcall;
  end;

implementation

function TIHelloWorld.echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
begin
  { TODO : Implement method echoEnum }
  Result := Value;
end;



function TIHelloWorld.echoHelloWorld(const Value: String): String;
begin
  result := Value;
end;

function TIHelloWorld.echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
begin
  { TODO : Implement method echoDoubleArray }
  Result := Value;
end;

function TIHelloWorld.echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
begin
  { TODO : Implement method echoMyEmployee }
  Result := Value;
end;

function TIHelloWorld.echoDouble(const Value: Double): Double; stdcall;
begin
  { TODO : Implement method echoDouble }
  Result := Value;
end;


initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TIHelloWorld);
end.

