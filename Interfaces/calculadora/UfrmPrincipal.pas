unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UCalculatorService2;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Calcular;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UCalculatorServiceDefault;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Calcular;
end;

procedure TForm1.Calcular;
var
   xCalculadora : TCalculatorService;
   xResultado:Double;
begin
  try
    xCalculadora := TCalculatorService.Create(StrToFLoatDef(edit1.text, 0),
                                             (StrToFloatDef(edit2.Text, 0)),
                                             TCalculatorServiceDefault.create);
    xResultado := xCalculadora.processCalc(TTypeCalc(ComboBox1.ItemIndex));
    label1.Caption := (FloatToStr(xResultado));
  finally
    FreeAndNil(xCalculadora);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  label1.Caption := '';
end;

end.
