unit UDAO.UnidadeMedida;

interface

uses
  UDAO.intf,
  System.JSON,
  Dataset.Serialize;

type
  TDAOUnidadeMedida = class(TInterfacedObject, IDAO)
    function ObterRegistro: TJSONARRAY;
    function ProcurarPorId(const aIdentificador: Integer): TJSONObject;
    function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;

implementation

uses
 FireDac.Comp.Client,
 System.SysUtils,
 UUtil.Banco;

{ UUnidadeMedida }

function TDAOUnidadeMedida.AdicionarRegistro(aRegistro: TJSONObject): Boolean;
begin
  try
    result := TUtilBanco.AdicionarRegistro('UNIDADEMEDIDA', ARegistro.ToJSON);
  except on E: Exception do
    raise Exception.Create('Erro ao adicionar registro: ' + e.Message);
  end;
end;

function TDAOUnidadeMedida.DeletarRegistro(const aIdentificador: Integer): Boolean;
begin
  try
    result := TUtilBanco.RemoverRegistro('UNIDADEMEDIDA', aIdentificador);
  except on E: Exception do
    raise Exception.Create('Erro ao remover registro: ' + e.Message);
  end;
end;

function TDAOUnidadeMedida.ObterRegistro: TJSONARRAY;
var
  xQuery:TFDQuery;
begin
  xQuery := nil;
  try
    try
      xQuery := TUtilBanco.ExecutarConsulta('SELECT * FROM UNIDADEMEDIDA');
      result := xQuery.ToJSONArray;
    except on E: Exception do
      raise Exception.Create('Erro ao obter registros:' + e.Message);
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

function TDAOUnidadeMedida.ProcurarPorId(
  const aIdentificador: Integer): TJSONObject;
var
  xQuery: TFDQuery;
begin
  xQuery := nil;
  try
     try
       xQuery := TUtilBanco.ExecutarConsulta(
         Format('SELECT *  FROM UNIDADEMEDIDA WHERE ID = %d',[aIdentificador]));
       result := xQuery.ToJSONObject;
     except on E: Exception do
       raise Exception.Create('Erro ao obter registros:' + e.Message);
     end;
  finally
    FreeAndNil(xQuery);
  end;
end;

end.