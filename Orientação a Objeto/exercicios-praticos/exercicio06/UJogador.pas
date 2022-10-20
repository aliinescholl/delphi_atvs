unit UJogador;

interface

type
TJogador = class
  private
  FNome : String;
  FIdade : Integer;
  Fposicao : String;
  FId : Integer;
    function GetId: Integer;
    function GetIdade: Integer;
    function Getnome: String;
    function GetPosicao: String;
    procedure SetId(const Value: Integer);
    procedure Setidade(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetPosicao(const Value: String);

  public
  property Nome : String read Getnome write SetNome;
  property Idade : Integer read GetIdade write Setidade;
  property Posicao : String read GetPosicao write SetPosicao;
  property Id : Integer read GetId write SetId;

end;

implementation

{ TJogador }

function TJogador.GetId: Integer;
begin
  result := FId;
end;

function TJogador.GetIdade: Integer;
begin
  result := FIdade;
end;

function TJogador.Getnome: String;
begin
  result := FNome;
end;

function TJogador.GetPosicao: String;
begin
  result := Fposicao;
end;

procedure TJogador.SetId(const Value: Integer);
begin
  FId := value;
end;

procedure TJogador.Setidade(const Value: Integer);
begin
  FIdade := value;
end;

procedure TJogador.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TJogador.SetPosicao(const Value: String);
begin
  FPosicao := value;
end;

end.
