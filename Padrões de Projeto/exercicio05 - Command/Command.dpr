program Command;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UCommand in 'pattern\UCommand.pas',
  UConcreteCommand in 'pattern\UConcreteCommand.pas',
  UInvoker in 'pattern\UInvoker.pas',
  UReceiver in 'pattern\UReceiver.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
