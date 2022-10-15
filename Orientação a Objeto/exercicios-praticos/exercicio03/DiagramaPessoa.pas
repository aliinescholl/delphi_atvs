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
    procedure Gravar(aPessoa: TPessoa); virtual; abstract; //
    property Nome: String read GetNome write SetNome;
    property Endereco: String read GetNome write SetNome;
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
    function CPF_Valido(const xCpf_Valido: String): Boolean;
    property Cpf: String read GetCpf write SetCpf;
    property Idade: Integer read GetIdade write SetIdade;
    procedure Gravar(aPessoa: TPessoa); override;
  end;

  TPessoaJuridica = class(TPessoa)
  private
    FCNPJ, FIE: String;
    function GetCnpj: String;
    function GetIe: String;
    procedure SetCnpj(const Value: String);
    procedure SetIe(const Value: String);
  public
    function CNPJ_Valido(const aCnpj: String): Boolean;
    property Cnpj: String read GetCnpj write SetCnpj;
    property Ie: String read GetIe write SetIe;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TPessoa }

function TPessoa.GetNome: String;
begin
  result := FNome;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TPessoaFisica }

function TPessoaFisica.CPF_Valido(const xCpf_Valido: String): Boolean;
var
  i, xSoma, xMultiplicador, xDigito1, xDigito2: Integer;
  xCpfValido: Boolean;
begin
  // Calcular d�gito 1----------
  i := 11;
  xMultiplicador := 10;
  xSoma := 0;

  for i := 1 to 9 do
  begin
    xSoma := xSoma + StrToInt(Cpf[i]) * xMultiplicador;
    xMultiplicador := xMultiplicador - 1;
  end;

  xDigito1 := 11 - (xSoma mod 11);

  if (xDigito1 = 10) or (xDigito1 = 11) then
  begin
    xDigito1 := 0;
  end;

  // Calcular digito 2----------
  xMultiplicador := 11;
  xSoma := 0;

  for i := 1 to 10 do
  begin
    xSoma := xSoma + StrToInt(Cpf[i]) * xMultiplicador;
    xMultiplicador := xMultiplicador - 1;
  end;

  xDigito2 := 11 - (xSoma mod 11);

  if (xDigito2 = 10) or (xDigito2 = 11) then
    xDigito2 := 0;

  if ((xDigito1 = StrToInt(Cpf[10])) and (xDigito2 = StrToInt(Cpf[11]))) then
  begin
    xCpfValido := True;
    showmessage('cpf valido');
  end
  else
  begin
    xCpfValido := False;
    showmessage('cpf invalido');
  end;

end;

function TPessoaFisica.GetCpf: String;
begin
  result := FCPF;
end;

function TPessoaFisica.GetIdade: Integer;
begin
  result := FIdade;
end;

procedure TPessoaFisica.Gravar(aPessoa: TPessoa);
begin

end;

procedure TPessoaFisica.SetCpf(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoaFisica.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ_Valido(const aCnpj: String): Boolean;
var
xDigito1, xDigito2 : String;
xSoma, i, xResto, xMultiplicador: Integer;
xCnpj : Boolean;
begin
//calculo 1� digito verificador
  xSoma := 0;
  xMultiplicador := 2;

  for i := 12 downto 1 do
  begin
    xSoma := xSoma + (StrToInt(Cnpj[i]) * xMultiplicador);
    xMultiplicador := xMultiplicador + 1;
    if (xMultiplicador = 10) then
      xMultiplicador := 2;
  end;

  xResto := xSoma mod 11;

  if ((xResto = 0) or (xResto = 1)) then
    xDigito1 := '0'

  else
    str((11 - xResto): 1, xDigito1);

 //Calculo 2� digito verificador
  xSoma := 0;
  xMultiplicador := 2;

  for i := 13 downto 1 do
  begin
    xSoma := xSoma + (StrToInt(Cnpj[i]) * xMultiplicador);
    xMultiplicador := xMultiplicador + 1;

    if (xMultiplicador = 10) then
      xMultiplicador := 2;

  end;

  xResto := xSoma mod 11;

  if ((xResto = 0) or (xResto = 1)) then
    xDigito2 := '0'

  else
    str((11 - xResto): 1, xDigito2);

  if ((xDigito1 = Cnpj[13]) and (xDigito2 = Cnpj[14])) then
    begin
      xCNPJ := True;
      showmessage('cnpj v�lido');
    end

  else
    begin
     xCNPJ := False;
     showmessage('cnpj invalido')
    end;
end;


function TPessoaJuridica.GetCnpj: String;
begin
  result := FCNPJ;
end;

function TPessoaJuridica.GetIe: String;
begin
  result := FIE;
end;

procedure TPessoaJuridica.SetCnpj(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TPessoaJuridica.SetIe(const Value: String);
begin
  FIE := Value;
end;

end.
