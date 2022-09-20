program somar_valores;

uses
  Vcl.Forms,
  soma_numeros in 'soma_numeros.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
