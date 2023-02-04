// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:9090/wsdl/IIHelloWorld
//  >Import : http://localhost:9090/wsdl/IIHelloWorld>0
// Version  : 1.0
// (03/02/2023 19:28:52 - - $Rev: 103843 $)
// ************************************************************************ //

unit IIHelloWorld1;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TMyEmployee          = class;                 { "urn:IHelloWorldIntf"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "urn:IHelloWorldIntf"[GblSmpl] }
  TEnumTest = (etNone, etAFew, etSome, etAlot);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : TMyEmployee, global, <complexType>
  // Namespace : urn:IHelloWorldIntf
  // ************************************************************************ //
  TMyEmployee = class(TRemotable)
  private
    FLastName: string;
    FFirstName: string;
    FSalary: Double;
  published
    property LastName:  string  read FLastName write FLastName;
    property FirstName: string  read FFirstName write FFirstName;
    property Salary:    Double  read FSalary write FSalary;
  end;

  TDoubleArray = array of Double;               { "urn:IHelloWorldIntf"[GblCplx] }

  // ************************************************************************ //
  // Namespace : urn:IHelloWorldIntf-IIHelloWorld
  // soapAction: urn:IHelloWorldIntf-IIHelloWorld#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IIHelloWorldbinding
  // service   : IIHelloWorldservice
  // port      : IIHelloWorldPort
  // URL       : http://localhost:9090/soap/IIHelloWorld
  // ************************************************************************ //
  IIHelloWorld = interface(IInvokable)
  ['{457C4654-6A31-8ED5-BB6B-5910699529DE}']
    function  echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function  echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function  echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function  echoDouble(const Value: Double): Double; stdcall;
    function  echoHelloWorld(const Value: string): string; stdcall;
  end;

function GetIIHelloWorld(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IIHelloWorld;


implementation
  uses System.SysUtils;

function GetIIHelloWorld(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IIHelloWorld;
const
  defWSDL = 'http://localhost:9090/wsdl/IIHelloWorld';
  defURL  = 'http://localhost:9090/soap/IIHelloWorld';
  defSvc  = 'IIHelloWorldservice';
  defPrt  = 'IIHelloWorldPort';
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
    Result := (RIO as IIHelloWorld);
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
  { IIHelloWorld }
  InvRegistry.RegisterInterface(TypeInfo(IIHelloWorld), 'urn:IHelloWorldIntf-IIHelloWorld', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IIHelloWorld), 'urn:IHelloWorldIntf-IIHelloWorld#%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TEnumTest), 'urn:IHelloWorldIntf', 'TEnumTest');
  RemClassRegistry.RegisterXSClass(TMyEmployee, 'urn:IHelloWorldIntf', 'TMyEmployee');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TDoubleArray), 'urn:IHelloWorldIntf', 'TDoubleArray');

end.