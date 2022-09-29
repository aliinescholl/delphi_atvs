program positivo_ou_negativo;

uses
  Vcl.Forms,
  descobrir_sinal_numero in 'descobrir_sinal_numero.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
