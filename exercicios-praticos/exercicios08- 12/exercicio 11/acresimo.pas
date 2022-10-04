unit acresimo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edt_preco_custo: TEdit;
    edt_acrescimo: TEdit;
    btn_calcular: TButton;
    Label1: TLabel;
    Label2: TLabel;
    resultado: TLabel;
    procedure btn_calcularClick(Sender: TObject);
  private
    procedure acrescimo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.acrescimo;
var
  xresultado, xpreco_custo, xacrescimo: Double;
begin
  xpreco_custo := StrToFloat(edt_preco_custo.Text);
  xacrescimo   := StrToFloat(edt_acrescimo.Text);

  xacrescimo := (xacrescimo/100) * xpreco_custo;
  xresultado := xacrescimo + xpreco_custo;

  resultado.Caption := 'O valor do produto com acréscimo será de R$' + FormatFloat('##,##0.00',xresultado);
end;

procedure TForm1.btn_calcularClick(Sender: TObject);
begin
  acrescimo;
end;

end.
