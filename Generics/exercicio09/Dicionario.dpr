program Dicionario;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {aa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Taa, aa);
  Application.Run;
end.
