unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSOma = function (A: Double; B:DOuble): Double; stdcall;
  TForm2 = class(TForm)
    edtNum1: TEdit;
    edtNum2: TEdit;
    btCalcular: TButton;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    procedure btCalcularClick(Sender: TObject);
  private
  procedure ChamarDll;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btCalcularClick(Sender: TObject);
begin
  Self.chamarDll;
  lblResultado.Visible := True;
end;

procedure TForm2.ChamarDll;
var
  xHandle : THandle;
  xSoma   : TSoma;
  xResultado, xNum1, xNum2 : Double;
begin
  if not TryStrToFloat(edtNum1.Text, xNum1) then
    raise Exception.Create('Valor para o n�mero 1 inv�ldio');

  if not TryStrToFloat(edtNum2.Text, xNum2) then
    raise Exception.Create('Valor para o n�mero 2 inv�lido');

  xHandle := LoadLibrary('MinhaDLL.dll');

  if xHandle > 0 then
  begin
    try
      @xSoma := GetProcAddress(xHandle, 'Somar');

      if @xSoma <> nil then
      begin
        xResultado := xSoma(xNum1, xNum2);
        lblResultado.Caption := xResultado.ToString;
      end
      else
      ShowMessage('N�o foi poss�vel carregar o procedimento da dll');
    finally
       FreeLibrary(xHandle)
    end;
  end;
end;

end.
