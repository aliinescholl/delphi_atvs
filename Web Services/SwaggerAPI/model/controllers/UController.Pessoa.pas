unit UController.Pessoa;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UPessoa;

type
  [SwagPath('pessoa', 'Pessoas')]
  TPessoaController = class
    private
    public
    [SwagGET('Listar Pessoas', True)]
    [SwagParamQuery('id','id da pessoa')]
    [SwagResponse(200, TPessoa, 'Informa��es da Pessoa', True)]
    class procedure GetPessoas(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagGET('id', 'Procurar uma pessoa')]
    [SwagParamPath('id', 'id da pessoa')]
    [SwagResponse(200, TPessoa, 'Informa��es da Pessoa')]
    [SwagResponse(404)]
    class procedure FindUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagPOST('Adicionar nova pessoa')]
    [SwagParamBody('Informa��es da pessoa', TPessoa)]
    [SwagResponse(201, TPessoa)]
    [SwagResponse(400)]
    class procedure InsertUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);

    [SwagPUT('{id}', 'Atualizar uma pessoa')]
    [SwagParampath('id', 'id da pessoa')]
    [SwagParamBody('Informa��es da pessoa', TPessoa)]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    class procedure UpdateUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);


    [SwagDELETE('{id}', 'Deletar uma pessoa')]
    [SwagParampath('id', 'id da pessoa')]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    class procedure DeleteUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

{ TPessoaController }

class procedure TPessoaController.DeleteUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

class procedure TPessoaController.FindUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  res.Send('[{"id": 1, "nome": "Aline"}]');
end;

class procedure TPessoaController.GetPessoas(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
    res.Send('[{"id": 1, "nome": "Aline"}]');
end;

class procedure TPessoaController.InsertUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send(Req.Body).Status(THTTPStatus.Created);
end;

class procedure TPessoaController.UpdateUser(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

end.