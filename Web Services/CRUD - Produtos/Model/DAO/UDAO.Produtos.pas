unit UDAO.Produtos;

interface

uses
  UDAO.intf,
  System.JSON,
  Dataset.Serialize;

type
  TDAOProdutos = class(TInterfacedObject, IDAO)
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

{ TDAOProdutos }

function TDAOProdutos.AdicionarRegistro(aRegistro: TJSONObject): Boolean;
begin
  try
    result := TUtilBanco.AdicionarRegistro('PRODUTOS', ARegistro.ToJSON);
  except on E: Exception do
    raise Exception.Create('Erroao adicionar registro: ' + e.Message);
  end;
end;

function TDAOProdutos.DeletarRegistro(const aIdentificador: Integer): Boolean;
begin
  try
    result := TUtilBanco.RemoverRegistro('PRODUTOS', aIdentificador);
  except on E: Exception do
    raise Exception.Create('Erro ao remover registro: ' + e.Message);
  end;
end;

function TDAOProdutos.ObterRegistro: TJSONARRAY;
var
  xQuery:TFDQuery;
begin
  xQuery := nil;
  try
    try
      xQuery := TUtilBanco.ExecutarConsulta('SELECT * FROM PRODUTOS');
      result := xQuery.ToJSONArray;
    except on E: Exception do
      raise Exception.Create('Erro ao obter registros:' + e.Message);
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

function TDAOProdutos.ProcurarPorId(const aIdentificador: Integer): TJSONObject;
var
  xQuery: TFDQuery;
begin
  xQuery := nil;
  try
     try
       xQuery := TUtilBanco.ExecutarConsulta(
         Format('SELECT *  FROM PRODUTOS WHERE ID = %d',[aIdentificador]));
       result := xQuery.ToJSONObject;
     except on E: Exception do
       raise Exception.Create('Erro ao obter registros:' + e.Message);
     end;
  finally
    FreeAndNil(xQuery);
  end;
end;

end.