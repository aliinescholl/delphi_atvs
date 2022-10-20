unit Ufrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UElevador;

type
  TForm1 = class(TForm)
    btnAndarElevador: TButton;
    procedure btnAndarElevadorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Felevador : TElevador;
    procedure Elevador;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAndarElevadorClick(Sender: TObject);
begin
  Elevador;
end;

procedure TForm1.Elevador;
var
  xAndar, xPessoa: Integer;

begin
  try
    Felevador := TELevador.Create(10, 10);
    xAndar := StrToInt(inputbox('Informar', 'Digite o Andar', ''));
    xPessoa := StrToInt(inputbox('Informar', 'Quantas pessoas entraram?', ''));
    Showmessage(Felevador.Escolher(xAndar, xPessoa));

  finally

  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(Felevador);
end;

end.
