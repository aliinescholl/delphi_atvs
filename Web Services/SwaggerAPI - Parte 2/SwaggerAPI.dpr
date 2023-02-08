program SwaggerAPI;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  System.SysUtils,
  UPessoa in 'model\Entities\UPessoa.pas',
  UController.Pessoa in 'model\controllers\UController.Pessoa.pas',
  UCargo in 'model\Entities\UCargo.pas',
  UController.Cargo in 'model\controllers\UController.Cargo.pas';

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
   .Delete('/pessoas/:id', TPessoaController.DeleteUser)

   .Get('/cargos', TCargoController.GetCargo)
   .Get('/cargos/:id', TCargoController.FindCargo)
   .Post('/cargos', TCargoController.InsertCargo)
   .Put('/cargos/:id', TCargoController.UpdateCargo)
   .Delete('/cargos/:id', TCargoController.DeleteCargo);

end;

begin
  THorse
   .Use(CORS)
   .USE(HorseSwagger);

   SwaggerConfig;
   THorseGBSwaggerRegister.RegisterPath(TPessoaController);
   THorseGBSwaggerRegister.RegisterPath(TCargoController);

   Registry;

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.