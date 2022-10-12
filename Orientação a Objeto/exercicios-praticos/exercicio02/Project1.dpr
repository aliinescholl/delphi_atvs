program Project1;

uses
  Vcl.Forms,
  ContaCorrente in 'ContaCorrente.pas' {FrmContaCorrente},
  UContaCorrente in 'UContaCorrente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmContaCorrente, FrmContaCorrente);
  Application.Run;
end.
