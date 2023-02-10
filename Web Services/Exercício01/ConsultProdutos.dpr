program ConsultProdutos;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.Commons,
  Horse.GBSwagger,
  Horse.Jhonson,
  System.JSON,
  Horse.BasicAuthentication,
  System.SysUtils,
  UProduto in 'model\Entities\UProduto.pas',
  Controller.UProduto in 'model\controllers\Controller.UProduto.pas',
  UDadosGerais in 'model\services\UDadosGerais.pas';

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
    .Get('/produtos', TProdutoController.GetProduto)
    .Get('/produtos/:id', TProdutoController.FindProduto)
    .Post('/produtos', TProdutoController.InsertProduto)
    //.Put('/produto/:id', TProdutoController.UpdateProduto)
    .Delete('/produtos/:id', TProdutoController.DeleteProduto)
end;

begin
  THorse
   .Use(CORS)
   .USE(HorseSwagger)
   .use(JHONSON)
   .Use(HorseBasicAuthentication(
      function (const aUserName, aPassword: String):Boolean
      begin
        result := aUserName.Equals('user') and
                  aPassword.Equals('password');
      end));;

  SwaggerConfig;

  THorseGBSwaggerRegister.RegisterPath(TProdutoController);
  Registry;

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.