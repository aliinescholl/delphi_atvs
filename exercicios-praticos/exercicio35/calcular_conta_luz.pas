unit calcular_conta_luz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
    TTipo = (tpResidencia, tpComercio, tpIndustria) ;
    TForm1 = class(TForm)
    Label1: TLabel;
    edt_qtd_kw: TEdit;
    btnCalcular: TButton;
    rgroupTipo: TRadioGroup;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure Calcular;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Calcular;
var
  xKwGasto, xResultado : double;

  begin
  xKwGasto := StrToFloat(edt_qtd_kw.Text);

    case TTipo(rgroupTipo.ItemIndex) of
      tpResidencia:
        begin
          xResultado := xKwGasto * 0.6;
        end;

      tpComercio:
        begin
          xResultado := xKwGasto * 0.48;
        end;

      tpIndustria:
        begin
          xResultado := xKwGasto * 1.29;

       end;

  end;
  lblResultado.Caption := 'Voc� pagar� R$' + FormatFloat('###,##0.00', xResultado)
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Calcular
end;

end.
