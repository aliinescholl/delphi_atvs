unit UPessoa;

interface

type
  TPessoa = class
   private
    FNome : String;
    FCpf  : String;
    FEspecialidade : String;

    function GetNome: String;
    function GetCpf: String;
    function GetEspecialidade: String;

    procedure SetNome(const Value: String);
    procedure SetCpf(const Value: String);
    procedure SetEspecialidade(const Value: String);

   public
    constructor Create(const aCpf, aNome, aEspecialidade:String);
    destructor Destroy; override;

    property Nome: String          read GetNome          write SetNome;
    property Cpf: String           read GetCpf           write SetCpf;
    property Especialidade: String read GetEspecialidade write SetEspecialidade;

  end;

implementation

{ TPessoa }

{ TPessoa }

constructor TPessoa.Create(const aCpf, aNome, aEspecialidade: String);
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.GetCpf: String;
begin

end;

function TPessoa.GetEspecialidade: String;
begin

end;

function TPessoa.GetNome: String;
begin

end;

procedure TPessoa.SetCpf(const Value: String);
begin

end;

procedure TPessoa.SetEspecialidade(const Value: String);
begin

end;

procedure TPessoa.SetNome(const Value: String);
begin

end;

{ TPessoa }

end.
