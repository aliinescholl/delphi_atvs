program Adapter;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UWebServiceCorreios in 'pattern\Adapter\UWebServiceCorreios.pas',
  UInterfaceViaCEP in 'pattern\Adapter\UInterfaceViaCEP.pas',
  UTarget in 'pattern\Adapter\UTarget.pas',
  UWebServiceViaCEP in 'pattern\Adapter\UWebServiceViaCEP.pas',
  UAdaptee in 'pattern\Adapter\UAdaptee.pas',
  UAdapter in 'pattern\Adapter\UAdapter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
