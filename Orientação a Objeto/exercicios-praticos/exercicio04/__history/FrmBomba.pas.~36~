unit FrmBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UBomba;

type
  TForm1 = class(TForm)
    memoResultado: TMemo;
    btnAbastecerPorLitro: TButton;
    btnQtdnaBomba: TButton;
    btnAbastecerporvalor: TButton;
    btnAlterarCombustivel: TButton;
    procedure btnQtdnaBombaClick(Sender: TObject);
    procedure btnAbastecerporvalorClick(Sender: TObject);
  private
  FBombaCombustivel : TBombaCombustivel;
  procedure AbastecerPorLitro;
  procedure AlterarCombustivel;
  procedure AtualizarQtdNaBomba;
  procedure AbastecerPorValor;
  procedure Listar;
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
begin

end;

procedure TForm1.AbastecerPorValor;
var
  xValorAbastecido : Currency;
begin
  xValorAbastecido := StrToCurr(inputbox('informar', 'Qual valor abastecido?',''));
  FBombaCombustivel.AbastecerPorValor(xValorAbastecido);
  // memoResultado.Lines.Add(CurrToStr(xValorAbastecido));
end;

procedure TForm1.AlterarCombustivel;
begin

end;

procedure TForm1.AtualizarQtdNaBomba;
begin
  FBombaCombustivel := TBombaCombustivel.Create(5.00, 0 , 1000);
  try
    FBombaCombustivel.QuantidadeCombustivel := StrToFloat(inputbox('informar','Nova Quantidade na bomba: ', ''));    
  finally

  end;
end;

procedure TForm1.btnAbastecerporvalorClick(Sender: TObject);
begin
  AbastecerPorValor;
end;

procedure TForm1.btnQtdnaBombaClick(Sender: TObject);
begin
  AtualizarQtdNaBomba;
  Listar;
end;

procedure TForm1.Listar;
begin
   memoResultado.Clear;
   memoResultado.Lines.Add('Quantidade disponível na bomba: ' + FLoatToSTr(FBombaCombustivel.QuantidadeCombustivel));
   
end;

end.
