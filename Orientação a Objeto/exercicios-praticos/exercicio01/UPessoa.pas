unit UPessoa;

interface

type
  Tpessoa = class
    private
      FNome: String;
      FIdade: Byte;
      FNascimento: Tdate;
      Faltura : Double;

    function GetNome : String;
    procedure SetNome(const Value : String);

    function GetNascimento : TDate;
    procedure SetNascimento (const Value: TDate);

    function GetAltura : Double;
    procedure SetAltura (const Value: Double);

    public

    function ImprimirDados : String;

    property Nome : String read  GetNome write SetNome;
    property Nascimento: Tdate read GetNascimento write SetNascimento;
    property Altura: Double read GetAltura write SetAltura;
  end;

implementation

uses
  System.SysUtils;

{ Tpessoa }

{ FAltura }
function Tpessoa.GetAltura: Double;
begin
  result := FAltura;
end;

procedure Tpessoa.SetAltura(const Value: Double);
begin
  FAltura := Value;
end;

{ FNascimento }

function Tpessoa.GetNascimento: TDate;
begin
  result := fNascimento;
end;

procedure Tpessoa.SetNascimento(const Value: TDate);
begin
  FNascimento := Value;
end;

{ FNome }

function Tpessoa.GetNome: String;
begin
  result := Fnome;
end;

procedure Tpessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{Imprimir Dados}

function Tpessoa.ImprimirDados:String;
var
  xIdade : Integer;
begin
  xIdade := trunc(( Date - (self.FNascimento)) / 365.25);
  result := 'Nome: ' + self.Nome + SlineBreak +
            'Idade: ' +  FloatToStr(xIdade)  + SlineBreak +
            'Data de Nascimento: ' + DateToStr(self.FNascimento) + SlineBreak +
            'Altura: ' + FloatToStr(self.Faltura);
end;

end.
