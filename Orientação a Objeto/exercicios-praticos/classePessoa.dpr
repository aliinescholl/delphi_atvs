program classePessoa;

uses
  Vcl.Forms,
  pessoa in 'pessoa.pas' {Form1},
  UPessoa in 'UPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
