program atv_menu;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Formulario},
  UfrmCliente in 'UfrmCliente.pas' {frmCliente},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormulario, Formulario);
  Application.Run;
end.
