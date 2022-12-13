program ToDoList;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {FrmPrincipal},
  USplash in 'USplash.pas' {Form2},
  SharedPreference in 'SharedPreference.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
