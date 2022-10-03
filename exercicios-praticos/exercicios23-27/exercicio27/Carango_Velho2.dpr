program Carango_Velho2;

uses
  Vcl.Forms,
  carango2 in 'carango2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
