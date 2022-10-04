program calculadora_comissao;

uses
  Vcl.Forms,
  comissao_calcular in 'comissao_calcular.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
