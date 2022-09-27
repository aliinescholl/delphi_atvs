unit carango;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tcarro = record
    Modelo: String;
    Ano: Integer;
    Preco : Double;
  end;

  TForm1 = class(TForm)
    Memo1: TMemo;
    btn_cadastrar: TButton;
    Label1: TLabel;
    procedure Cadastro_Carango;
    procedure Desconto_Carango;
    procedure btn_cadastrarClick(Sender: TObject);
  private

    Fcarro: array of Tcarro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.Cadastro_Carango;
var
  xCarro: Tcarro;
  i: Integer;
begin
  setLength(Fcarro, 4);

  i := 0;

  for i := 0 to Length(Fcarro) - 1 do
  begin
    xCarro := Fcarro[i];
    xCarro.Modelo := inputbox('Informar', 'Qual o Modelo Do carro?', '');
    xCarro.Ano := StrToInt(inputbox('Informar', 'Qual O ano Do carro?', ''));
    xCarro.Preco := STrToFLoat(inputbox('Informar', 'Qual o pre�o do carro?', ''));
  end;

end;

procedure TForm1.Desconto_Carango;
var
  xCarro : Tcarro;
  i : Integer;
begin
  setLength(Fcarro, 4);

  repeat
    if True then
    
  until ;
end;

procedure TForm1.btn_cadastrarClick(Sender: TObject);
begin
  Cadastro_Carango;
end;

end.
