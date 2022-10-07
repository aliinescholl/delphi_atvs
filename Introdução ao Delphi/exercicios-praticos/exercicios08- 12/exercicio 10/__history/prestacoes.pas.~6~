unit prestacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edt_valor: TEdit;
    Label1: TLabel;
    botao_calcular: TButton;
    edt_resultado: TLabel;
    procedure botao_calcularClick(Sender: TObject);
  private
    procedure CalcularPrestacao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CalcularPrestacao;
var
  xvalorTotal, xvalorprestacao: Double;

begin
  xvalorTotal     := StrToFloat(edt_valor.Text);
  xvalorprestacao := xvalorTotal/5;

  edt_resultado.Caption := 'Cada prestação sairá no valor de R$' + FloatToSTr(xvalorprestacao) +
                            SlineBreak +'* sendo 5 prestações';
end;

procedure TForm1.botao_calcularClick(Sender: TObject);
begin
   CalcularPrestacao;
end;

end.
