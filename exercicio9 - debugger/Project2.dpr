program Project2;

uses
  Vcl.Forms,
  UformDebug in 'UformDebug.pas' {nome},
  Ucalculadora in 'Ucalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tnome, nome);
  Application.Run;
end.
