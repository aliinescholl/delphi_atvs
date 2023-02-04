program Project1;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {formPrincipal},
  IICalculadora1 in 'IICalculadora1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
