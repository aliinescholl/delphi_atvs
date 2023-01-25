program CalculadoraComInterface;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\UfrmPrincipal.pas' {Form1},
  UCalculatorService in 'services\UCalculatorService.pas',
  UCalculatorServiceDefault in 'services\UCalculatorServiceDefault.pas',
  UCalculatorService2 in 'services\UCalculatorService2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
