program LendoArquivo1;

uses
  Vcl.Forms,
  LendoArquivo in '..\02\LendoArquivo.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
