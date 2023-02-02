unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UTipoPrazo,
  UFabricaPrazos;

type
  TForm1 = class(TForm)
    edtValor: TEdit;
    EdtQtdParcelas: TEdit;
    cmbPrazoPagamento: TComboBox;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Gerar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Gerar;
end;

procedure TForm1.Gerar;
var
  xFabricaMetodos:IFactoryMethod;
  xTipoPrazo: ITipoPrazo;
begin
   xFabricaMetodos := TFabricaPrazos.Create;
   xTipoPrazo      := xFabricaMetodos.ConsultarPrazo(cmbPrazoPagamento.Text);

   with memo1.Lines do
   begin
     Add(xTipoPrazo.ConsultarDescricao);
     Add(xTipoPrazo.ConsultarJuros);
     Add(xTipoPrazo.ConsultarProjecao(StrToIntDef((edtValor.Text), 0),
                                                StrToIntDef((edtQtdParcelas.Text), 0)));
     Add(xTipoPrazo.ConsultarTotal);
     Add('==============================')
   end
end;

end.
