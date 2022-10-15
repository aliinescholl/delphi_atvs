program Project1;

uses
  Vcl.Forms,
  frmPessoa in 'frmPessoa.pas' {Form1},
  DiagramaPessoa in 'DiagramaPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
