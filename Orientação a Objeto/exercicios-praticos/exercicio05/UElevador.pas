unit UElevador;

interface

type
TELevador =  class
  private
  FCapacidadeElevador : Integer;
  FTotalAndares : Integer;
  FAndarAtual : Integer;
  Fpessoas : Integer;

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
  public
  procedure Entrar(var aPessoas : Integer);
  function Sair  (const aPessoas : Integer) : Integer;
  function Escolher(const aescolher: Integer; 
                    var apessoa : Integer): String;


  property CapacidadeElevador : Integer read GetCapacidadeElevador write SetCapacidadeElevador;
  property TotalAndares : Integer       read GetTotalAndares       write SetTotalAndares;
  property AndarAtual : Integer         read GetAndar              write SetAndar;
  property Pessoas : Integer            read GetPessoas            write SetPessoas;
  constructor Create(const CapacidadeElevador : Integer; const TotalAndares : Integer);

end;
implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TELevador }

procedure TElevador.Entrar(var aPessoas : Integer);
begin
  //xPessoa := 0;
  Pessoas := aPessoas + Pessoas;
end;

function TELevador.Sair(const aPessoas : Integer) : Integer;
var
  xPessoa : integer;
begin
  result := xPessoa - Pessoas;
end;

constructor TElevador.Create(const CapacidadeElevador : Integer; const TotalAndares : Integer);
begin
  FCapacidadeElevador := CapacidadeElevador;
  FTotalAndares       := TotalAndares;
end;

function TELevador.Descer : String;
begin
   showmessage('descendo');
end;

function TELevador.Subir: String;
begin
   showmessage('Subindo');
end;

function TELevador.Escolher(const aescolher: Integer; 
                            var apessoa : Integer): String;
var
  xAndarAtual: Integer;
begin
  xAndarAtual := 0;

  if aescolher > xAndarAtual then
    Subir
  else if aescolher < xAndarAtual then
    Descer;

  xAndarAtual := aescolher;
  
  if aPessoa > 0 then
    Entrar(aPessoa)
  else 
    Sair(apessoa);

  result := 'Voc� est� no andar ' + IntToStr(xAndarAtual) + ' e h� ' 
             + IntToStr(Pessoas) + ' dentro do elevador';
end;

function TELevador.GetAndar: Integer;
begin
  result := FAndarAtual;
end;

function TELevador.GetCapacidadeElevador: Integer;
begin
  result := FCapacidadeElevador;
end;

function TELevador.GetPessoas: Integer;
begin
 result := Fpessoas;
end;

function TELevador.GetTotalAndares: Integer;
begin
  result := FTotalAndares;
end;


procedure TELevador.SetAndar(const Value: Integer);
begin
  FAndarAtual := Value;
end;

procedure TELevador.SetCapacidadeElevador(const Value: Integer);
begin
  FCapacidadeElevador := Value;
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
