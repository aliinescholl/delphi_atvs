unit UAdaptee;

interface

uses
  UWebServiceCorreios, System.Classes;

type
  TWebServiceCorreios = class
    private
    FParametros: ConsultaCEP;
    FResposta: EnderecoERP;

    procedure BeforeExecute(const aMethodName: String; aSOAPRequest: TStream);
    public
      destructor Destroy; override;
      procedure DefinirParametrosCOnsulta(const aCep: String);
      procedure ConsultarCEP;
      function ObterResposta(const aInformacao: string):String;
  end;

implementation

uses
  Soap.SOAPHTTPClient, System.SysUtils;

{ TWebServiceCorreios }

procedure TWebServiceCorreios.BeforeExecute(const aMethodName: String;
  aSOAPRequest: TStream);
var
  xRequest: TStringList;
begin
 xRequest := TStringList.Create;
 try
   xRequest.Text :=
      '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:cli="http://cliente.bean.master.sigep.bsb.correios.com.br/">' +
      '  <soapenv:Header/>' +
      '    <soapenv:Body>' +
      '      <cli:consultaCEP>' +
      '        <cep>' + FParametros.cep  + '</cep>' +
      '      </cli:consultaCEP>' +
      '    </soapenv:Body>' +
      '</soapenv:Envelope>';

    aSOAPRequest.Position := 0;
    aSOAPRequest.Size     := Length(xRequest.Text);
    xRequest.SaveToStream(aSOAPRequest)
 finally
    FreeAndNil(xRequest);
 end;
end;

procedure TWebServiceCorreios.ConsultarCEP;
var
  xCorreios : AtendeCliente;
  xHTTPRIO: THTTPRIO;
begin
  xHTTPRIO := THTTPRIO.Create(nil);
  xHTTPRIO.OnBeforeExecute := Self.BeforeExecute;

  xCorreios := GetAtendeCLiente(True, '', xHTTPRIO);
  FResposta := xCorreios.consultaCEP(FParametros).Return;
end;

procedure TWebServiceCorreios.DefinirParametrosCOnsulta(const aCep: String);
begin
  FParametros := consultaCEP.Create;
  FParametros.cep := aCep;
end;

destructor TWebServiceCorreios.Destroy;
begin
  FreeAndNil(FParametros);
  FreeAndNil(FResposta);
  inherited;
end;

function TWebServiceCorreios.ObterResposta(const aInformacao: string): String;
begin
  result := EmptyStr;

  if aInformacao = 'Logradouro' then
    result := FResposta.end_
  else if aInformacao = 'Bairro' then
    result := FResposta.bairro
  else if aInformacao = 'Cidade' then
    result := FResposta.Cidade;
end;

end.
