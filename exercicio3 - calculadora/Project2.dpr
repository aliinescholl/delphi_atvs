program Project2;

uses
  Vcl.Forms,
  UfrmCalculadora2 in 'UfrmCalculadora2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmcalculadora2, frmcalculadora2);
  Application.Run;
end.
