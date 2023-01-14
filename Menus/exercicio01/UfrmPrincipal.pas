unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    Exerccio011: TMenuItem;
    Exerccio021: TMenuItem;
    Exerccio031: TMenuItem;
    procedure Exerccio011Click(Sender: TObject);
    procedure Exerccio021Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UfrmAtores, UfrmRelCidades;

{$R *.dfm}

procedure TForm1.Exerccio011Click(Sender: TObject);
begin
  if not assigned(formRelActor) then
    FormRelActor := TformRelActor.Create(Self);

  FormRelActor.Show;
end;

procedure TForm1.Exerccio021Click(Sender: TObject);
begin
  if not assigned(FormRelCidades) then
    FormRelCidades := TFormRelCidades.Create(Self);

  FormRelCidades.Show;
end;

end.
