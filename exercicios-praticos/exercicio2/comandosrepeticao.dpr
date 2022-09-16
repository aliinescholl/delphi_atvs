program comandosrepeticao;

uses
  Vcl.Forms,
  comandos_repeticao in 'comandos_repeticao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
