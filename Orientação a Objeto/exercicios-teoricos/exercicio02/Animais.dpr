program Animais;

uses
  Vcl.Forms,
  AnimalSOm in 'AnimalSOm.pas' {Form1},
  UAnimais in 'UAnimais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
