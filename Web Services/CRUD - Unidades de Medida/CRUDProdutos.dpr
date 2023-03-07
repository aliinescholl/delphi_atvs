program CRUDProdutos;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.Query,
  System.SysUtils,
  UUtil.Banco in 'Model\Utils\UUtil.Banco.pas',
  UDAO.intf in 'Model\DAO\UDAO.intf.pas',
  UDAO.Produtos in 'Model\DAO\UDAO.Produtos.pas',
  UController.Produtos in 'Model\Controllers\UController.Produtos.pas',
  UDAO.UnidadeMedida in 'Model\DAO\UDAO.UnidadeMedida.pas',
  UController.UnidadeMedida in 'Model\Controllers\UController.UnidadeMedida.pas';

procedure Registry;
begin
  THorse.group.Prefix('v1')
    .Get('/produtos', TControllerProdutos.GetProdutos)
    .Get('/produtos/:id', TCOntrollerProdutos.getProduto)
    .Post('/produtos', TControllerProdutos.PostProdutos)
    .Delete('/produtos/:id', TControllerProdutos.DeleteProdutos);
end;

begin
  THorse.Use(Jhonson);
  THorse.use(Query);

  Registry;

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.