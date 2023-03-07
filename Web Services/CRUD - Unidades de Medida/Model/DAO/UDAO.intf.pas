unit UDAO.intf;

interface

uses
  System.JSON;

type
  IDAO = interface
    function ObterRegistro: TJSONARRAY;
    function ProcurarPorId(const aIdentificador: Integer): TJSONObject;
    function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;

implementation

end.
