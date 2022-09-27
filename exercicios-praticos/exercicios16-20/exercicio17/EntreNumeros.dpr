program EntreNumeros;

uses
  Vcl.Forms,
  ler_numeros in 'ler_numeros.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
