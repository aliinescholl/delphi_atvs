program Lucro_ou_Prejuizo;

uses
  Vcl.Forms,
  lucro_prejuizo_vendas in 'lucro_prejuizo_vendas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
