unit FrmBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UBomba, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btnAbastecerPorLitro: TButton;
    btnQtdnaBomba: TButton;
    btnAbastecerporvalor: TButton;
    tipoCombustivel: TRadioGroup;
    Shape1: TShape;
    labelListar: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Image1: TImage;
    ProgressBar1: TProgressBar;
    procedure btnQtdnaBombaClick(Sender: TObject);
    procedure btnAbastecerporvalorClick(Sender: TObject);
    procedure btnAbastecerPorLitroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  FBombaCombustivel : TBombaCombustivel;
  procedure AbastecerPorLitro;
  procedure AlterarCombustivel;
  procedure AtualizarQtdNaBomba;
  procedure AbastecerPorValor;
  procedure Listar;
  procedure MostrarBotao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.SysUtils;

{$R *.dfm}

{ TForm1 }

procedure TForm1.AbastecerPorLitro;
var
  xValorAbastecido : Currency;
begin
   xValorAbastecido := StrToCurrDef(inputbox('informar', 'Quantos litros abastecidos?',''), 0 );
   FBombaCombustivel.AbastecerPorLitro(xValorAbastecido);
end;

procedure TForm1.AbastecerPorValor;
var
  xValorAbastecido : Currency;
begin
  xValorAbastecido := StrToCurrDef(inputbox('informar', 'Qual valor abastecido?',''), 0 );
  FBombaCombustivel.AbastecerPorValor(xValorAbastecido);
end;

procedure TForm1.AlterarCombustivel;
begin
  case TTipoCombustivel(tipoCombustivel.ItemIndex) of
    tpGasolina:
      begin
        FBombaCombustivel.AlterarValorCombustivel(6.00)
      end;

     tpDiesel:
      begin
        FBombaCombustivel.AlterarValorCombustivel(3.99)
      end;

      tpAlcool:
      begin
        FBombaCombustivel.AlterarValorCombustivel(5.36)
      end;
      else
        raise Exception.Create('Por favor selecione um tipo de combustível!');
  end;
end;

procedure TForm1.AtualizarQtdNaBomba;
begin
  if Assigned(FBombaCombustivel) then
    FreeAndNil(FBombaCombustivel);

  FBombaCombustivel := TBombaCombustivel.Create(5.00, 0 , 20);
  try
    FBombaCombustivel.QuantidadeCombustivel := StrToFloatDef(inputbox('informar','Nova Quantidade na bomba: ', ''), 0);
    if FBombaCombustivel.QuantidadeCombustivel < 0 then
    raise Exception.Create('Não é possível abastecer menos que 0');

    if FBombaCombustivel.QuantidadeCombustivel > 1000 then
      raise Exception.Create('Não é possível abastecer mais de 1000 litros na bomba');

    MostrarBotao;
  finally

  end;
end;

procedure TForm1.btnAbastecerPorLitroClick(Sender: TObject);
begin
  AlterarCombustivel;
  AbastecerPorLitro;
  Listar;
end;

procedure TForm1.btnAbastecerporvalorClick(Sender: TObject);
begin
  AlterarCombustivel;
  AbastecerPorValor;
  Listar;
end;

procedure TForm1.btnQtdnaBombaClick(Sender: TObject);
begin
  AtualizarQtdNaBomba;
  Listar;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FBombaCombustivel);
end;

procedure TForm1.Listar;
begin
   labelListar.Caption     := FBombaCombustivel.Listar;
   ProgressBar1.Position   := Trunc(FBombaCombustivel.QuantidadeCombustivel);
end;

procedure TForm1.MostrarBotao;
begin
 if FBombaCombustivel.QuantidadeCombustivel <> 0 then
   begin
     labelListar.Visible          := True;
     btnAbastecerporvalor.Visible := True;
     btnAbastecerPorLitro.Visible := True;
     tipoCombustivel.Visible      := True;
     Shape2.Visible               := True;
     Shape3.Visible               := True;
     Image1.Visible               := True;
     ProgressBar1.Visible         := True;
   end;

end;

end.
