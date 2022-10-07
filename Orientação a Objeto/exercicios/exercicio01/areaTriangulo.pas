unit areaTriangulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnCalcular: TButton;
    btnCalcularOOP: TButton;
    edtTriXA: TEdit;
    edtTriXB: TEdit;
    edtTriXC: TEdit;
    edtTriYB: TEdit;
    edtTriYA: TEdit;
    edtTriYC: TEdit;
    edtTriAa: TLabel;
    lblResultado: TLabel;
    lblResultado2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblResultado3: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnCalcularOOPClick(Sender: TObject);
  private
    procedure CalcularAreaTriangulo;
    procedure CalcularAreaOOP;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UTriangulo;

{$R *.dfm}
{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  CalcularAreaTriangulo
end;

procedure TForm1.btnCalcularOOPClick(Sender: TObject);
begin
  Self.CalcularAreaOOP;
end;

procedure TForm1.CalcularAreaOOP;
var
  xTrianguloX: TTriangulo;
  xTrianguloY: TTriangulo;

  xAreaX: Double;
  xAreaY: Double;
begin
  xTrianguloX := TTriangulo.Create;
  xTrianguloY := TTriangulo.Create;
  try

    // 1� triangulo
    xTrianguloX.a := StrToFloatDef(edtTriXA.Text, 0);
    xTrianguloX.b := StrToFloatDef(edtTriXB.Text, 0);
    xTrianguloX.c := StrToFloatDef(edtTriXC.Text, 0);

    xAreaX := xTrianguloX.Area;

    // 2� triangulo
    xTrianguloY.a := StrToFloatDef(edtTriYA.Text, 0);
    xTrianguloY.b := StrToFloatDef(edtTriYB.Text, 0);
    xTrianguloY.c := StrToFloatDef(edtTriYC.Text, 0);

    xAreaY := xTrianguloY.Area;

    lblResultado.Caption := 'Triangulo X possui �rea de ' +
      FormatFloat('0.00', xAreaX);

    lblResultado3.Caption := 'Triangulo Y possui �rea de ' +
      FormatFloat('0.00', xAreaY);

    if (xAreaX > xAreaY) then
      lblResultado2.Caption := 'A �rea do triangulo x � maior.'
    else if (xAreaX < xAreaY) then
      lblResultado2.Caption := 'A �rea do triangulo y � maior.'
    else
       lblResultado2.Caption := 'S�o Iguais'

  finally
    FreeAndNil(xTrianguloX);
    FreeAndNil(xTrianguloX);
  end;

end;

procedure TForm1.CalcularAreaTriangulo;
var
  xLadoA1, xLadoB1, xLadoC1, xLadoA2, xLadoB2, xLadoC2, xValorP1, xValorP2,
    xArea1, xArea2: Double;
begin
  xLadoA1 := StrToFloat(edtTriXA.Text);
  xLadoB1 := StrToFloat(edtTriXB.Text);
  xLadoC1 := StrToFloat(edtTriXC.Text);

  xLadoA2 := StrToFloat(edtTriYA.Text);
  xLadoB2 := StrToFloat(edtTriYB.Text);
  xLadoC2 := StrToFloat(edtTriYC.Text);

  xValorP1 := (xLadoA1 + xLadoB1 + xLadoC1) / 2;
  xValorP2 := (xLadoA2 + xLadoB2 + xLadoC2) / 2;

  xArea1 := Sqrt(xValorP1 * (xValorP1 - xLadoA1) * (xValorP1 - xLadoB1) *
    (xValorP1 - xLadoC1));
  xArea2 := Sqrt(xValorP2 * (xValorP2 - xLadoA2) * (xValorP2 - xLadoB2) *
    (xValorP2 - xLadoC2));

  lblResultado.Caption := FormatFloat('###,#00.000', xArea1) + SlineBreak +
    FormatFloat('###,#00.000', xArea2);

  if xArea1 > xArea2 then
    lblResultado2.Caption := 'Tri�ngulo Y � maior'

  else if xArea2 > xArea1 then
    lblResultado2.Caption := 'Tri�ngulo X � maior'

  else
    lblResultado2.Caption := 'S�o Iguais'

end;

end.
