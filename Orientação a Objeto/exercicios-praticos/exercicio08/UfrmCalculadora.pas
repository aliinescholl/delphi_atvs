unit UfrmCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNum1: TEdit;
    edtNum2: TEdit;
    cmboperacao: TComboBox;
    Calcular: TButton;
    lblResultado: TLabel;
    procedure CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UCalculadora;

{$R *.dfm}

procedure TForm1.CalcularClick(Sender: TObject);
var
  xCalculadora : TCalculadora;
  xResultado : Double;
begin
  xResultado   := 0;
  xCalculadora := TCalculadora.Create;

  try
    case TOperacao(cmboperacao.ItemIndex) of
      opSomar:
      begin
        xResultado := xCalculadora.Somar(StrToFloatDef(edtNum1.Text, 0),
                                         StrToFloatDef(edtNum2.Text, 0));
      end;

      opSubtrair:
      begin
       xResultado := xCalculadora.Subtrair(StrToFloatDef(edtNum1.Text, 0),
                                           StrToFloatDef(edtNum2.Text, 0));
      end;

      opMultiplicar:
      begin
       xResultado := xCalculadora.Multiplicar(StrToFloatDef(edtNum1.Text, 0),
                                              StrToFloatDef(edtNum2.Text, 0));
      end;

      opDividir:
      begin
       xResultado := xCalculadora.Dividir(StrToFloatDef(edtNum1.Text, 0),
                                          StrToFloatDef(edtNum2.Text, 0));
      end;
    end;

    lblResultado.Caption := FloatToStr(xResultado);
  finally
    FreeAndnil(xCalculadora);
  end;
end;

end.
