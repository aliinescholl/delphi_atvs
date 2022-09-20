program media_gasta;

uses
  Vcl.Forms,
  consumo_automovel in 'consumo_automovel.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
