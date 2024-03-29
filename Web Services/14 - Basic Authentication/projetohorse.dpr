program projetohorse;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  System.SysUtils,
  Horse.Commons,
  Horse.BasicAuthentication,
  System.JSON,
  UDadosGerais in 'model\services\UDadosGerais.pas';

begin
  THorse.Use(Jhonson);

  THorse.Use(HorseBasicAuthentication(
  function (const aUserName, aPassword: String):Boolean
  begin
    result := aUserName.Equals('user') and
              aPassword.Equals('password');
  end));

  THorse.Get('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Pessoa.json');
      try
        Res.Send<TJSONArray>(xDadosPessoas.JSON);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Post('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Pessoa.json');
      try
         if not xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
           Res.Status(THTTPStatus.OK)
         else
           res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Delete('/users/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xId: Integer;
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Pessoa.json');
      try
        xId := req.Params.Items[('id')].ToInteger;

         if xDadosPessoas.RemoverRegistro(xId) then
           Res.Status(THTTPStatus.NoContent)
         else
           res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Get('/cargos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('cargo.json');
      try
        Res.Send<TJSONArray>(xDadosPessoas.JSON);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Post('/cargos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('cargo.json');
      try
         if not xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
           Res.Status(THTTPStatus.OK)
         else
           res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Delete('/cargos/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xId: Integer;
      xDadosPessoas: TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('cargo.json');
      try
        xId := req.Params.Items[('id')].ToInteger;

         if xDadosPessoas.RemoverRegistro(xId) then
           Res.Status(THTTPStatus.NoContent)
         else
           res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);
  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('T� rodando na porta ' + IntToStr(Horse.Port));
    end);
end.