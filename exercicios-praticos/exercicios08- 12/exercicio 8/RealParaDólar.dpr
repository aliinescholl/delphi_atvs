program RealParaDólar;

uses
  Vcl.Forms,
  realparadolar in 'realparadolar.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
