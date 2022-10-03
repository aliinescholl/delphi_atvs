unit carango2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tcarro = record
    Modelo: String;
    combustivel: String;
    Preco: Double;
  end;

  TForm1 = class(TForm)
    lista_desconto: TMemo;
    btn_cadastrar: TButton;
    Label1: TLabel;
    btn_desconto: TButton;
    procedure Cadastro_Carango;
    procedure Desconto_Carango;
    procedure btn_cadastrarClick(Sender: TObject);
    procedure btn_descontoClick(Sender: TObject);
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
  setLength(Fcarro, 2);

  i := 0;

  for i := 0 to Length(Fcarro) - 1 do
  begin
    xCarro.Modelo := inputbox('Informar', 'Qual o Modelo Do carro?', '');
    xCarro.combustivel := inputbox('Informar', 'Qual O combustível?', '');
    xCarro.Preco := STrToFloat(inputbox('Informar',
      'Qual o preço do carro?', ''));

    if xCarro.Preco <= 0 then
      break
    else
      Fcarro[i] := xCarro; // o xcarro alimenta o record com os dados recebidos
  end;

end;

procedure TForm1.Desconto_Carango;
var
  xCarro: Tcarro;
  i, xcont: Integer;
  xSomaDesconto, xSomaPreco, xDesconto: Double;
const
  cDescontoGasolina = 0.21;
  cDescontoAlcool = 0.25;
  cDescontoDiesel = 0.14;
begin

  i := 0;

  for i := 0 to Length(Fcarro) - 1 do
  begin
    xCarro := Fcarro[i]; // aqui percorre o record com o xcarro

    if xCarro.combustivel = 'diesel' then
    begin
      xdesconto    := xCarro.Preco * cDescontoDiesel;
      xCarro.Preco := xCarro.Preco - xdesconto;
      xSomaDesconto:= xSomaDesconto + xDesconto;
      xSomaPreco   := xSomaPreco   + xCarro.Preco;

      lista_desconto.Lines.Add('O carro ' + xCarro.Modelo +
        ' ficará com o preço R$' + FormatFloat('##,#00.00', xCarro.Preco) +
        ' com desconto');
    end
    else if xCarro.combustivel = 'alcool' then
    begin
      xdesconto    := xCarro.Preco * cDescontoAlcool;
      xCarro.Preco := xCarro.Preco - xdesconto;
      xSomaDesconto:= xSomaDesconto + xDesconto;
      xSomaPreco   := xSomaPreco   + xCarro.Preco;

      lista_desconto.Lines.Add('O carro ' + xCarro.Modelo +
        ' ficará com o preço R$' + FormatFloat('##,#00.00', xCarro.Preco) +
        ' com desconto');
    end
    else if xCarro.combustivel = 'gasolina' then
    begin
      xdesconto    := xCarro.Preco * cDescontoGasolina;
      xCarro.Preco := xCarro.Preco - xdesconto;
      xSomaDesconto:= xSomaDesconto + xDesconto;
      xSomaPreco   := xSomaPreco   + xCarro.Preco;

      lista_desconto.Lines.Add('O carro ' + xCarro.Modelo +
        ' ficará com o preço R$' + FormatFloat('##,#00.00', xCarro.Preco) +
        ' com desconto');

    end;
      lista_desconto.Lines.Add('No total foi pago RS %d e foi dado R$ %d de desconto')
    Fcarro[i] := xCarro;
  end;

end;

procedure TForm1.btn_cadastrarClick(Sender: TObject);
begin
  Cadastro_Carango;
end;

procedure TForm1.btn_descontoClick(Sender: TObject);
begin
  Desconto_Carango;
end;

end.
