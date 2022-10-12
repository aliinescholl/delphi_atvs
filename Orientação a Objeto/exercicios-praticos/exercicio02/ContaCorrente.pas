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
    memoListar: TMemo;
    Label3: TLabel;
    btnListar: TButton;
    procedure btnDepósitoClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnSaqueClick(Sender: TObject);
    procedure btnAlterarNomeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnListarClick(Sender: TObject);
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

procedure TFrmContaCorrente.btnAlterarNomeClick(Sender: TObject);
var
  xnome : String;
begin
  xnome := inputbox('Inserir', 'Digite seu novo nome: ', '');
  FContaCliente.AlterarNome(xnome);
end;

procedure TFrmContaCorrente.btnCadastrarClick(Sender: TObject);
begin
  Cadastrar;
end;

procedure TFrmContaCorrente.btnDepósitoClick(Sender: TObject);
var
  xDeposito : Double;
begin
   xdeposito := StrTofloat(inputbox('Inserir', 'Digite o Valor do depósito', ''));
   FContaCliente.Depósito(xDeposito);
end;

procedure TFrmContaCorrente.btnListarClick(Sender: TObject);
begin
  memoListar.Lines.Add(FContaCliente.Listar);
end;

procedure TFrmContaCorrente.btnSaqueClick(Sender: TObject);
var
  xSaque : Double;
begin
  xSaque := STrToFloat(inputbox('Inserir', 'Quanto deseja sacar?', ''));
  FContaCliente.Saque(xSaque);
end;

procedure TFrmContaCorrente.Cadastrar;
begin
   FContaCliente := TConta.Create('123', 'Aline', 0);
   try
     FContaCliente.Cliente  := edtNomeCorrentista.text;
     FContaCliente.numConta := edtNumConta.text;
     FContaCliente.Saldo    := StrToFloat(edtSaldo.text);
   except

   end;
end;

procedure TFrmContaCorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FContaCliente);
end;

end.
