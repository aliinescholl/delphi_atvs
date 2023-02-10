program SwaggerAPI;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  System.SysUtils,
  UPessoa in 'model\Entities\UPessoa.pas',
  UController.Pessoa in 'model\controllers\UController.Pessoa.pas';

procedure SwaggerConfig;
begin
  Swagger
    .Register
     .SchemaOnError(TAPIError)
    .&End
    .Info
     .Title('My first API with documentation')
     .Description('API Horse')
     .Contact
      .Name('Aline')
      .Email('email@hotmail.com')
      .URL('http://www.mypage.com.br')
     .&End
    .&End
    .BasePath('v1');
end;

procedure Registry;
begin
  THorse.Group.Prefix('v1')
   .Get('/pessoas', TPessoaController.GetPessoas)
   .Get('/pessoas/:id', TPessoaController.FindUser)
   .Post('/pessoas', TPessoaController.InsertUser)
   .Put('/pessoas/:id', TPessoaController.UpdateUser)
   .Delete('/pessoas/:id', TPessoaController.DeleteUser);
end;

begin
  THorse
   .Use(CORS)
   .USE(HorseSwagger);

   SwaggerConfig;
   THorseGBSwaggerRegister.RegisterPath(TPessoaController);

   Registry;

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.