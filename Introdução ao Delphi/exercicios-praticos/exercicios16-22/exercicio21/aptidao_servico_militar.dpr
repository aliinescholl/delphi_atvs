program aptidao_servico_militar;

uses
  Vcl.Forms,
  servico_militar in 'servico_militar.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
