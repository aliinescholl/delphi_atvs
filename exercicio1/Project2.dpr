program Project2;

uses
  Vcl.Forms,
  botao in 'botao.pas' {Form2},
  Uanimal in 'Uanimal.pas',
  usecoes in 'usecoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
