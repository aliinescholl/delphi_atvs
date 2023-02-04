unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtValor: TEdit;
    btnechoDOuble: TButton;
    btnHelloWorld: TButton;
    Label2: TLabel;
    procedure btnechoDOubleClick(Sender: TObject);
    procedure btnHelloWorldClick(Sender: TObject);
  private
  procedure EchoDouble;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  IIHelloWorld1;

procedure TForm1.btnechoDOubleClick(Sender: TObject);
begin
  Self.EchoDouble;
end;

procedure TForm1.btnHelloWorldClick(Sender: TObject);
begin
  Label2.Caption := GetIIHelloWorld.EchoHelloWorld('Hello world');
end;

procedure TForm1.EchoDouble;
var
  xValor: Double;
  xresultado: DOuble;
begin
  if not TryStrToFloat(edtValor.Text, xValor) then
    raise Exception.Create('Valor inv�lido');

  xResultado := GetIIHelloWorld.EchoDouble(xValor);
  Label2.Caption := 'Resultado: ' + xResultado.ToString;
end;

end.
