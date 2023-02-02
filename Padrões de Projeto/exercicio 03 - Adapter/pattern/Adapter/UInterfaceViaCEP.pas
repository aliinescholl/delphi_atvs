unit UInterfaceViaCEP;

interface

type
  IWebServiceViaCEP = interface
    ['{93170253-445F-4E9F-8541-2781D9D5C950}']
    procedure ConsultarEnderecoWebService(const aCep:String);
    function ObterLogradouro: String;
    function ObterBairro: String;
    function ObterCidade: String;
  end;

implementation

end.
