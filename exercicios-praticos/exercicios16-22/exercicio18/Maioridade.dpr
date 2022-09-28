program Maioridade;

uses
  Vcl.Forms,
  maiorOumenorDeIdade in 'maiorOumenorDeIdade.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
