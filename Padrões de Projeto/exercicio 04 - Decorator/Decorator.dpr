program Decorator;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UInterfaceComponent in 'pattern\Decorator\UInterfaceComponent.pas',
  UConcreteComponent in 'pattern\Decorator\UConcreteComponent.pas',
  UConcreteDecorator_DataHora in 'pattern\Decorator\UConcreteDecorator_DataHora.pas',
  UConcreteDecorator_Usuario in 'pattern\Decorator\UConcreteDecorator_Usuario.pas',
  UConcreteDecorator_Windows in 'pattern\Decorator\UConcreteDecorator_Windows.pas',
  UDecorator in 'pattern\Decorator\UDecorator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
