unit trocar_valores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TForm1 = class(TForm)
    edt_valor_a: TEdit;
    edt_valor_b: TEdit;
    label_resultado: TLabel;
    btn_trocar: TButton;
    procedure btn_trocarClick(Sender: TObject);
  private
    procedure trocar_valores;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.trocar_valores;
var
  x_a, x_b, x_c: string;
begin
  x_a := edt_valor_a.Text;
  x_b := edt_valor_b.Text;
  x_c := x_b;
  x_b := x_a;
  x_a := x_c;

  showmessage('O valor de A � ' + x_a + SLineBreak +'O valor de B �: ' + x_b);

end;

procedure TForm1.btn_trocarClick(Sender: TObject);
begin
  trocar_valores;
end;

end.
