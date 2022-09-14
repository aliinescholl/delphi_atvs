program form_procedure;

uses
  Vcl.Forms,
  formulario in '..\exercicio_procedure\formulario.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
