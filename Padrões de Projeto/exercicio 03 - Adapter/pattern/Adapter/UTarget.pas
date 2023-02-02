unit UTarget;

interface

uses
  UInterfaceViaCEP, System.Classes;

type
  TComunicador = class
    private
    FWebServiceViaCEP: IWebServiceViaCEP;
    public
    constructor Create(aWebServiceViaCEP: IWebServiceViaCEP);
    Destructor Destroy; override;

    function COnsultarEndereco(const aCep: String): TStringList;
  end;

implementation

{ TComunicador }

function TComunicador.COnsultarEndereco(const aCep: String): TStringList;
var
  xDados: TStringList;
begin
  FWebServiceViaCEP.ConsultarEnderecoWebService(aCep);

  xDados := TStringList.Create;
  xDados.Values['Logradouro'] := FWebServiceViaCEP.ObterLogradouro;
  xDados.Values['Bairro']     := FWebServiceViaCEP.ObterBairro;
  xDados.Values['Cidade']     := FWebServiceViaCEP.ObterCidade;

  result := xDados;
end;

constructor TComunicador.Create(aWebServiceViaCEP: IWebServiceViaCEP);
begin
  FWebServiceViaCEP := aWebServiceViaCEP;
end;

destructor TComunicador.Destroy;
begin
  FWebServiceViaCEP := nil;
  inherited;
end;

end.
