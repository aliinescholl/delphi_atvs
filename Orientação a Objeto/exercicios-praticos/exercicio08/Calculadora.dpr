program Calculadora;

uses
  Vcl.Forms,
  UfrmCalculadora in 'UfrmCalculadora.pas' {Form1},
  UCalculadora in 'UCalculadora.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
