program juros_simples;

uses
  Vcl.Forms,
  jurospoupanca in 'jurospoupanca.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
