program mensagens_para_numeros;

uses
  Vcl.Forms,
  maior_igual_menor in 'maior_igual_menor.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
