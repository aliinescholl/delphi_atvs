unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.AppEvnts;

type
  TForm1 = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    Button1: TButton;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UInterfaceComponent, UConcreteDecorator_DataHora, UConcreteDecorator_Usuario,
  UConcreteDecorator_Windows, UConcreteComponent;

{$R *.dfm}

procedure TForm1.ApplicationEvents1Exception(Sender: TObject; E: Exception);
var
  xLogExcecao: ILogExcecao;
begin
  xLogExcecao := TlogExcecao.Create(E);

  xLogExcecao := TDataHoraDecorator.Create(xLogExcecao);
  xLogExcecao := TUsuarioDecorator.Create(xLogExcecao);
  xLogExcecao := TWindowsDecorator.Create(xLogExcecao);

  ShowMessage(xLogExcecao.ObterDadosExcecao)
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  raise Exception.Create('Qualquer exce��o!');
end;

end.
