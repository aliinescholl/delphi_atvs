program Project1;

uses
  Vcl.Forms,
  tipos_dados_e_rtl in 'tipos_dados_e_rtl.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
