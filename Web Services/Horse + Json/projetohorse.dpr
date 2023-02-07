program projetohorse;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  System.SysUtils,
  Horse.Commons,
  System.JSON,
  UDadosGerais in 'model\services\UDadosGerais.pas';

begin
  THorse.Use(Jhonson());

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

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('T� rodando na porta ' + IntToStr(Horse.Port));
    end);
end.