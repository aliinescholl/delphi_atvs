unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDias = (Segunda, Terca, Quarta, Quinta, Sexta, Sabado, Domingo);
  Tmes  = (Janeiro, Fevereiro, Marco, Abril, Junho, Julho);

  TEnumUtils<T> = class
    class procedure EnumToList(aValue:TStrings);
  end;
  TForm1 = class(TForm)
    btnMes: TButton;
    btnDia: TButton;
    ComboBox1: TComboBox;
    procedure btnDiaClick(Sender: TObject);
    procedure btnMesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.TypInfo;

{$R *.dfm}

{ TEnumUtils<T> }

class procedure TEnumUtils<T>.EnumToList(aValue: TStrings);
var
  I, xPos : Integer;
  xAux : String;
begin
  aValue.Clear;
  i := 0;
  repeat
    xAux := GetEnumName(TypeInfo(T), i);
    xPos := GetEnumValue(TypeInfo(T), xAux);

    if xPos <> -1 then
      aVAlue.Add(xAux);

    inc(i)
  until xPos < 0;
end;

procedure TForm1.btnDiaClick(Sender: TObject);
begin
  ComboBox1.Text := 'Dias';
  TEnumUtils<TDias>.EnumTOList(ComboBox1.Items);
end;

procedure TForm1.btnMesClick(Sender: TObject);
begin
  ComboBox1.Text := 'Meses';
  TEnumUtils<TMes>.EnumToList(ComboBox1.items);
end;

end.