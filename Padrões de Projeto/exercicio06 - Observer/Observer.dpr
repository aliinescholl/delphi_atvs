program Observer;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  USubject in 'pattern\USubject.pas',
  UObserver in 'pattern\UObserver.pas',
  UNotificacao in 'pattern\UNotificacao.pas',
  UConcreteObserver_Log in 'pattern\frames\UConcreteObserver_Log.pas' {Frame1: TFrame},
  UConcreteObserver_Saldo in 'pattern\frames\UConcreteObserver_Saldo.pas' {Frame2: TFrame},
  UConcreteObserver_Historico in 'pattern\frames\UConcreteObserver_Historico.pas' {Frame3: TFrame},
  UConcreteSubject in 'pattern\frames\UConcreteSubject.pas' {Frame4: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
