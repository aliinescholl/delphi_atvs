program reajuste_mes_reodernar;

uses
  Vcl.Forms,
  interface1 in 'interface1.pas' {Form1},
  UfrmReajusteFuncionarios in 'UfrmReajusteFuncionarios.pas' {frmReajusteFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmReajusteFuncionarios, frmReajusteFuncionarios);
  Application.Run;
end.
