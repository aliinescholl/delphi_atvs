unit Controller.UProduto;

interface

uses
  Horse,
  Horse.Jhonson,
  System.JSON,
  GBSwagger.Path.Attributes,
  UProduto,
  SysUtils;

type
  [SwagPath('produtos', 'Produtos')]
  TProdutoController = class
    private
    public
    [SwagGET('Listar Produtos', True)]
    [SwagParamQuery('id','id do produto')]
    [SwagResponse(200, TProduto, 'Informações do produto', True)]
    class procedure GetProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagGET('id', 'Procurar um produto')]
    [SwagParamPath('id', 'id do produto')]
    [SwagResponse(200, TProduto, 'Informações do produto')]
    [SwagResponse(404)]
    class procedure FindProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagPOST('Adicionar novo produto')]
    [SwagParamBody('Informações do produto', TProduto)]
    [SwagResponse(201, TProduto)]
    [SwagResponse(400)]
    class procedure InsertProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagDELETE('{id}', 'Deletar um produto')]
    [SwagParampath('id', 'id do produto')]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    class procedure DeleteProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

uses
  UDadosGerais;

{ TProdutoController }

class procedure TProdutoController.DeleteProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xId: Integer;
  xDadosProduto: TDadosGerais;
begin
  xDadosProduto := TDadosGerais.Create('Produtos.json');
  try
    xId := Req.Params.Items[('id')].ToInteger;

    if xDadosProduto.RemoverRegistro(xId) then
      Res.Status(THTTPStatus.NoContent)
    else
      Res.Status(THTTPStatus.InternalServerError);
  finally
    xDadosProduto.Free;
  end;
end;


class procedure TProdutoController.FindProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosProduto: TDadosGerais;
  xJSONArray: TJSONArray;
  xId: Integer;
begin
  xId := Req.Params.Items[('id')].ToInteger;
  xDadosProduto := TDadosGerais.Create('Produtos.json');
  try
    xJSONArray := xDadosProduto.JSON;
    for var JSONValue in xJSONArray do
    begin
      if JSONValue.GetValue<Integer>('id') = xId then
      begin
        Res.Send(JSONValue)
      end;
    end;
  finally
    xDadosProduto.Free;
  end;
end;


class procedure TProdutoController.GetProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosPessoas: TDadosGerais;
begin
  xDadosPessoas := TDadosGerais.Create('Produtos.json');
  try
    Res.Send<TJSONArray>(xDadosPessoas.JSON);
  finally
    xDadosPessoas.Free;
  end;
end;
class procedure TProdutoController.InsertProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosPessoas: TDadosGerais;
  xProduto: TProduto;
  xDescricao: String;
  xId: Integer;
  xUnMedida: String;
  xPrecoVenda: Double;
  xRequestJSON: TJSONObject;
begin

  try
    xDadosPessoas := TDadosGerais.Create('Produtos.json');
    try
      if not xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
        Res.Status(THTTPStatus.OK)
      else
        Res.Status(THTTPStatus.InternalServerError);
    finally
      xDadosPessoas.Free;
      xProduto.Free;
    end;
  except
    Res.Status(400).Send('Erro');
  end;
end;

end.
