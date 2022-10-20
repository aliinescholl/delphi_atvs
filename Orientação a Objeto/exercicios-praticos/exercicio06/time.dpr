program time;

uses
  Vcl.Forms,
  agregacao in 'agregacao.pas' {Form1},
  UJogador in 'UJogador.pas',
  UTime in 'UTime.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
