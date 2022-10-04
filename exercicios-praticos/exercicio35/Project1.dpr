program Project1;

uses
  Vcl.Forms,
  calcular_conta_luz in 'calcular_conta_luz.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
