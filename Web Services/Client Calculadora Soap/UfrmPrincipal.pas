unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    valor2: TEdit;
    valor1: TEdit;
    btnCalcular: TButton;
    Opera��o: TLabel;
    cmbOperacoes: TComboBox;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses
  IICalculadora1;

procedure TformPrincipal.btnCalcularClick(Sender: TObject);
var
  xResultado,
  xValor1,
  xValor2: Double;

const
  cSomar       = 0;
  cSubtrair    = 1;
  cDividir     = 2;
  cMultiplicar = 3;

begin
  if not TrystrToFloat(valor1.Text, xValor1) then
    raise Exception.Create('Valor 1 inv�lido');

  if not TryStrToFloat(valor2.Text, xValor2) then
    raise Exception.Create('Valor 2 inv�lido');

  case cmbOperacoes.ItemIndex of
  cSomar:
    xResultado := GetIICalculadora.Somar(xValor1, xValor2);
  cSubtrair:
    xResultado := GetIICalculadora.Subtrair(xValor1, xValor2);
  cDividir:
    xResultado := GetIICalculadora.Dividir(xValor1, xValor2);
  cMultiplicar:
    xResultado := GetIICalculadora.Multiplicar(xValor1, xValor2)
  end;

  lblResultado.Caption := xResultado.ToString;
end;

end.