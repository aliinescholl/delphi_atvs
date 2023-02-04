// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:9090/wsdl/IICalculadora
// Version  : 1.0
// (03/02/2023 19:50:17 - - $Rev: 103843 $)
// ************************************************************************ //

unit IICalculadora1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:double          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:ICalculadoraIntf-IICalculadora
  // soapAction: urn:ICalculadoraIntf-IICalculadora#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IICalculadorabinding
  // service   : IICalculadoraservice
  // port      : IICalculadoraPort
  // URL       : http://localhost:9090/soap/IICalculadora
  // ************************************************************************ //
  IICalculadora = interface(IInvokable)
  ['{E9589784-223E-59A4-4E61-687594F521EF}']
    function  Somar(const aNum1: Double; const aNum2: Double): Double; stdcall;
    function  Subtrair(const aNum1: Double; const aNum2: Double): Double; stdcall;
    function  Dividir(const aNum1: Double; const aNum2: Double): Double; stdcall;
    function  Multiplicar(const aNum1: Double; const aNum2: Double): Double; stdcall;
  end;

function GetIICalculadora(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IICalculadora;


implementation
  uses System.SysUtils;

function GetIICalculadora(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IICalculadora;
const
  defWSDL = 'http://localhost:9090/wsdl/IICalculadora';
  defURL  = 'http://localhost:9090/soap/IICalculadora';
  defSvc  = 'IICalculadoraservice';
  defPrt  = 'IICalculadoraPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IICalculadora);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { IICalculadora }
  InvRegistry.RegisterInterface(TypeInfo(IICalculadora), 'urn:ICalculadoraIntf-IICalculadora', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IICalculadora), 'urn:ICalculadoraIntf-IICalculadora#%operationName%');

end.