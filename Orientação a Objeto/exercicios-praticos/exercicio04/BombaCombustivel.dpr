program BombaCombustivel;

uses
  Vcl.Forms,
  FrmBomba in 'FrmBomba.pas' {Form1},
  UBomba in 'UBomba.pas';

{$R *.res}


begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
