unit UElevador;

interface

type
TELevador =  class
  private
  FCapacidadeElevador : Integer;
  FTotalAndares : Integer;
  FAndarAtual : Integer;
  Fpessoas : Integer;
  FLimite : Integer;
  function Subir : String;
  function Descer : String;
    function  GetAndar: Integer;
    function  GetCapacidadeElevador: Integer;
    function  GetTotalAndares: Integer;
    procedure SetAndar(const Value: Integer);
    procedure SetCapacidadeElevador(const Value: Integer);
    procedure SetTotalAndares(const Value: Integer);
    function GetPessoas: Integer;
    procedure SetPessoas(const Value: Integer);
    function GetLimite: Integer;
    procedure SetLimite(const Value: Integer);

  public
  function Entrar : Integer;
  function Sair  : Integer;
  function Escolher(const aescolher: Integer): Integer;
  function Listar : String;


  property CapacidadeElevador : Integer read GetCapacidadeElevador write SetCapacidadeElevador;
  property TotalAndares : Integer       read GetTotalAndares       write SetTotalAndares;
  property AndarAtual : Integer         read GetAndar              write SetAndar;
  property Pessoas : Integer            read GetPessoas            write SetPessoas;
  property Limite : Integer             read GetLimite             write SetLimite;
  constructor Create(const CapacidadeElevador : Integer;
                     const TotalAndares : Integer = 0; const AndarAtual:Integer = 0;
                     const Pessoas : Integer = 0 ;const Limite : Integer = 0);

end;
implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TELevador }

function TElevador.Entrar : Integer;
begin
  if Pessoas > Limite then
    raise Exception.Create('Limite atingido!');
  Pessoas := Pessoas + 1;
  result := Pessoas ;
end;

function TELevador.Sair : Integer;
begin
  if Pessoas < 0 then
    raise Exception.Create('N?o ? poss?vel remover ningu?m');
  Pessoas := Pessoas - 1;
  result := Pessoas;
end;

constructor TElevador.Create(const CapacidadeElevador : Integer; const TotalAndares : Integer = 0;
                              const AndarAtual : Integer = 0; const Pessoas : Integer = 0 ;
                              const Limite : Integer = 0);
begin
  FCapacidadeElevador := CapacidadeElevador;
  FTotalAndares       := TotalAndares;
  FAndarAtual         := AndarAtual;
  FPessoas            := Pessoas;
  FLimite             := Limite;
end;

function TELevador.Descer : String;
begin
   result := 'Descendo...';
end;

function TELevador.Subir: String;
begin
   result := 'Subindo...';
end;

function TELevador.Escolher(const aescolher: Integer): Integer;
var
  xAndarAtual: Integer;
begin
  xAndarAtual := 0;

  if aescolher > xAndarAtual then
    Subir
  else if aescolher < xAndarAtual then
    Descer;

  xAndarAtual := aescolher;

  if Pessoas > Limite then
    raise Exception.Create('Limite de pessoas excedido');

  result := xAndarAtual;
end;

function TELevador.GetAndar: Integer;
begin
  result := FAndarAtual;
end;

function TELevador.GetCapacidadeElevador: Integer;
begin
  result := FCapacidadeElevador;
end;

function TELevador.GetLimite: Integer;
begin
  result := FLimite;
end;

function TELevador.GetPessoas: Integer;
begin
 result := Fpessoas;
end;

function TELevador.GetTotalAndares: Integer;
begin
  result := FTotalAndares;
end;

function TELevador.Listar: String;
begin
  result := 'Voc? est? no andar ' + IntToStr(AndarAtual) + ' e h? ' + SlineBreak
             + IntToStr(Pessoas) + ' dentro do elevador';
end;

procedure TELevador.SetAndar(const Value: Integer);
begin
  FAndarAtual := Value;
end;

procedure TELevador.SetCapacidadeElevador(const Value: Integer);
begin
  FCapacidadeElevador := Value;
end;

procedure TELevador.SetLimite(const Value: Integer);
begin
  FLimite := Value;
end;

procedure TELevador.SetPessoas(const Value: Integer);
begin
  Fpessoas := Value;
end;

procedure TELevador.SetTotalAndares(const Value: Integer);
begin
  FTotalAndares := Value;
end;

end.
