unit UDell;

interface

uses
  UInterface;

type
  TDell = class (TInterfacedObject, IFactoryMarca)
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop : IDesktop;
  end;

implementation

uses
  UInspiron, UVostro;

{ TDell }

function TDell.ConsultarDesktop: IDesktop;
begin
  result := TInspiron.Create;
end;

function TDell.ConsultarNotebook: INotebook;
begin
  result := TVostro.Create;
end;

end.
