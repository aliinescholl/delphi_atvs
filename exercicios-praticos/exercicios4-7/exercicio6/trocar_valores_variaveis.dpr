program trocar_valores_variaveis;

uses
  Vcl.Forms,
  trocar_valores in 'trocar_valores.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
