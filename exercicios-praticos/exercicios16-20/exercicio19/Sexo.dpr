program Sexo;

uses
  Vcl.Forms,
  masculinoOufeminino in 'masculinoOufeminino.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
