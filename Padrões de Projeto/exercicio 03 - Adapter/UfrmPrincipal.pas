unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    lblLogradouro: TLabel;
    lblCidade: TLabel;
    lblBairro: TLabel;
    bnconsultarviacorreios: TButton;
    btnViacep: TButton;
    Edit1: TEdit;
    procedure btnViacepClick(Sender: TObject);
    procedure bnconsultarviacorreiosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UTarget, UInterfaceViaCEP, UWebServiceViaCEP, UAdaptee, UAdapter;

{$R *.dfm}

procedure TForm1.bnconsultarviacorreiosClick(Sender: TObject);
var
  xWebServiceCorreios: TWebServiceCorreios;
  xAdapter: IWebServiceViaCEP;
  xComunicador: TComunicador;
  xRetorno: TStringList;
begin
  xWebServiceCorreios := TWebServiceCorreios.Create;

  xAdapter := TAdapter.Create(xWebServiceCorreios);

  xComunicador := TComunicador.Create(xAdapter);

  xRetorno:= TStringList.Create;

  try
    xRetorno := xComunicador.COnsultarEndereco(Edit1.Text);

    lblLogradouro.Caption := xRetorno.Values['Logradouro'];
    lblBairro.Caption     := xRetorno.Values['Bairro'];
    lblCidade.Caption     := xRetorno.Values['Cidade'];
  finally
    FreeAndNil(xRetorno);
    FreeAndNil(xComunicador);
    FreeAndNil(xWebServiceCorreios);
  end;
end;

procedure TForm1.btnViacepClick(Sender: TObject);
var
  xWebServiceviaCEP: IWebServiceViaCEP;
  xComunicador: TComunicador;
  xRetorno: TStringList;
begin
  xWebServiceviaCEP := TWebServiceViaCEP.Create;

  xComunicador := TComunicador.create(xWebServiceviaCEP);

  xRetorno:= TStringList.Create;

  try
    xRetorno := xComunicador.COnsultarEndereco(Edit1.Text);

    lblLogradouro.Caption := xRetorno.Values['Logradouro'];
    lblBairro.Caption     := xRetorno.Values['Bairro'];
    lblCidade.Caption     := xRetorno.Values['Cidade'];
  finally
    FreeAndNil(xRetorno);
    FreeAndNil(xComunicador);
  end;
end;

end.
