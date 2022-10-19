program Elevador;

uses
  Vcl.Forms,
  Ufrm in 'Ufrm.pas' {Form1},
  UElevador in 'UElevador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
