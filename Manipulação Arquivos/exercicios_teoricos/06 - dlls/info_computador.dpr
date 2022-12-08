program info_computador;

uses
  Vcl.Forms,
  InfoComputador in 'InfoComputador.pas' {Form2},
  UInfoPC in 'UInfoPC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
