program diferentes_ou_iguais;

uses
  Vcl.Forms,
  diferente_igual in 'diferente_igual.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
