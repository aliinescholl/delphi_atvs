unit UFabricaPrazos;

interface

uses
  UTipoPrazo;

type
  TTipoPrazo = (mensal, anual);

  TFabricaPrazos = class(TInterfacedObject, IFactoryMethod)
  public
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;

implementation

uses
  UPrazoAnual, UPrazoMensal;

{ IFactoryMethod }

function TFabricaPrazos.ConsultarPrazo(const aPrazo: String): ITipoPrazo;
begin
  if aPrazo = 'Mensal' then
    result := TPrazoMensal.Create
  else if aPrazo = 'Anual' then
    result := TPrazoAnual.Create;
end;

end.
