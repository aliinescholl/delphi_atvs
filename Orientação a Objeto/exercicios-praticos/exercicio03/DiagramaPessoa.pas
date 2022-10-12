unit DiagramaPessoa;

interface

type
  TPessoa = class
  private
    FNome: String;
    FEndereco: String;
    function GetNome: String;
    procedure SetNome(const Value: String);
  public
    procedure Gravar(aPessoa: TPessoa);
    property Nome : String read GetNome write SetNome;
    property Endereco : String read GetNome write SetNome;
  end;

  TPessoaFisica = class(TPessoa)
  private
    FCPF: String;
    FIdade: Byte;
    function GetCpf: String;
    function GetIdade: Integer;
    procedure SetCpf(const Value: String);
    procedure SetIdade(const Value: Integer);
  public
    function CPF_Valido : Boolean;
    property Cpf : String read GetCpf write SetCpf;
    property Idade : Integer read GetIdade write SetIdade;
  end;

  TPessoaJuridica = class(TPessoa)
  private
    FCNPJ, FIE : String;
    function GetCnpj: String;
    function GetIe: String;
    procedure setCnpj(const Value: String);
    procedure SetIe(const Value: String);
  public
    function CNPJ_Valido : Boolean;
    property Cnpj : String read GetCnpj write setCnpj;
    property Ie : String read GetIe write SetIe;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.GetNome: String;
begin
  result := FNome;
end;

procedure TPessoa.Gravar(aPessoa: TPessoa);
begin

end;

procedure TPessoa.SetNome(const Value: String);
begin
  Fnome := Value;
end;

{ TPessoaFisica }

function TPessoaFisica.CPF_Valido: Boolean;
var
  i, xSoma, xMultiplicador : Integer;
begin
  i := 8;
  xMultiplicador := 10;
  repeat
    xSoma := xSoma + StrToInt(cpf[i]) * xMultiplicador;
  until xMultiplicador := 2;
end;

function TPessoaFisica.GetCpf: String;
begin
  result := FCPF;
end;

function TPessoaFisica.GetIdade: Integer;
begin
  result := FIdade;
end;

procedure TPessoaFisica.SetCpf(const Value: String);
begin
   FCpf := Value;
end;

procedure TPessoaFisica.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ_Valido: Boolean;
begin

end;

function TPessoaJuridica.GetCnpj: String;
begin
  result := FCNPJ;
end;

function TPessoaJuridica.GetIe: String;
begin
  result := FIE;
end;

procedure TPessoaJuridica.setCnpj(const Value: String);
begin
  FCnpj := Value;
end;

procedure TPessoaJuridica.SetIe(const Value: String);
begin
  Fie := Value;
end;

end.
