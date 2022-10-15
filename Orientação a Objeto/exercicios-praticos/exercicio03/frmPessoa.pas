unit frmPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DiagramaPessoa;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtCpf: TEdit;
    btnVerificar: TButton;
    label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtEndereco: TEdit;
    btnVerificarCnpj: TButton;
    procedure btnVerificarClick(Sender: TObject);
    procedure btnVerificarCnpjClick(Sender: TObject);

  private
    //FPessoa : TPessoa;
    procedure VerificarCpf;
    procedure VerificarCNPJ;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnVerificarClick(Sender: TObject);
begin
  VerificarCpf;
end;

procedure TForm1.btnVerificarCnpjClick(Sender: TObject);
begin
  VerificarCNPJ;
end;

procedure TForm1.VerificarCNPJ;
var
  xPessoa : TPessoa;
begin
  xPessoa := TPessoaJuridica.Create;
  try
    xPessoa.Nome := edtNome.Text;
    xPessoa.Endereco := edtEndereco.Text;
    TPessoaJuridica(xPessoa).Cnpj := edtCpf.Text;
    TPessoaJuridica(xPessoa).CNPJ_Valido(edtCpf.Text);
  finally
    FreeAndNil(xPessoa);
  end;
end;

procedure TForm1.VerificarCpf;
var
  xPessoa : TPessoa;
begin
  xPessoa          := TPessoaFisica.Create;
  try
    xPessoa.Nome     := edtNome.text;
    xPessoa.Endereco := edtEndereco.Text;
    TPessoaFisica(xPessoa).Cpf := edtCpf.Text;
    TPessoaFisica(xPessoa).Cpf_Valido(edtCpf.Text);
  finally
     freeAndNil(xPessoa);
  end;
end;

end.
