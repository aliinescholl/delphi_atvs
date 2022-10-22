program TEscola;

uses
  Vcl.Forms,
  frmEscola in 'frmEscola.pas' {Form1},
  UAluno in 'UAluno.pas',
  TDisciplina in 'TDisciplina.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
