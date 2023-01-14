program relatórios;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UdmDados in 'UdmDados.pas' {FrmDados},
  UfrmAtores in 'UfrmAtores.pas' {FormRelActor},
  UfrmRelCidades in 'UfrmRelCidades.pas' {FormRelCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmDados, FrmDados);
  Application.Run;
end.
