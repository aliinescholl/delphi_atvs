unit ContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaCorrente;

type
  TFrmContaCorrente = class(TForm)
    edtNomeCorrentista: TEdit;
    edtNumConta: TEdit;
    edtSaldo: TEdit;
    btnCadastrar: TButton;
    btnDepósito: TButton;
    btnAlterarNome: TButton;
    btnSaque: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    labelResultado: TLabel;
    procedure btnDepósitoClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    FContaCliente : TConta;
    procedure Cadastrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContaCorrente: TFrmContaCorrente;

implementation

{$R *.dfm}

{ TFrmContaCorrente }

procedure TFrmContaCorrente.btnCadastrarClick(Sender: TObject);
begin
  Cadastrar;
end;

procedure TFrmContaCorrente.btnDepósitoClick(Sender: TObject);
var
  xDeposito:Double;
begin
   FContaCliente          := TConta.Create('123', 'Aline');
  // FContaCliente.Depósito := StrTofloat(inputbox('Inserir', 'Digite o Valor do depósito', ''));

end;

procedure TFrmContaCorrente.Cadastrar;
begin
   FContaCliente := TConta.Create('123', 'Aline');
   try
     FContaCliente.Cliente  := edtNomeCorrentista.text;
     FContaCliente.numConta := edtNumConta.text;
     FContaCliente.Saldo    := StrToFloat(edtSaldo.text);
   except
    ShowMessage('Erro ao cadastrar')
     //FreeAndNil(xContaCorrente);
   end;
end;

end.
