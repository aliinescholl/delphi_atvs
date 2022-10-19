unit UElevador;

interface

type
TELevador =  class
  private
  Ftamanho : Double;
  Fpeso_maximo : Double;
    function GetTamanho: Double;
    procedure SetTamanho(const Value: Double);
    function GetPeso: Double;
    procedure SetPeso(const Value: Double);
  public
  function Subir : Integer;
  function Descer : Integer;
  function Escolher(const aescolher : Integer) : Integer;
  procedure Andar;

  property Tamanho : Double read GetTamanho write SetTamanho;
  property Peso : Double read GetPeso write SetPeso;
end;
implementation

uses
  Vcl.Dialogs;

{ TELevador }

procedure TELevador.Andar;
begin
  showmessage('criando pernas pra andar pera ai')
end;

function TELevador.Descer : Integer;
begin
   showmessage('descendo');
end;

function TELevador.Escolher(const aescolher : Integer): Integer;
var
  xLocalAtual : Integer;
begin
  xLocalAtual := 0;

  if xLocalAtual > aescolher then
    Descer
  else
    Subir;
end;

function TELevador.GetPeso: Double;
begin
  result := Fpeso_maximo;
end;

function TELevador.GetTamanho: Double;
begin
  result := FTamanho;
end;

procedure TELevador.SetPeso(const Value: Double);
begin
  Fpeso_maximo := Value;
end;

procedure TELevador.SetTamanho(const Value: Double);
begin
  FTamanho := Value;
end;

function TELevador.Subir: Integer;
begin
   showmessage('Subindo');
end;

end.
