program animais;

uses
  Vcl.Forms,
  Ufrm_animais in 'Ufrm_animais.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
