unit UInspiron;

interface

uses
  UInterface;

type
  TInspiron = class (TInterfacedObject, IDesktop)
    function BuscarNomeProcessador:String;
    function BuscarTamanhoHD: String;
  end;

implementation

{ TInspiron }

function TInspiron.BuscarNomeProcessador: String;
begin
  result := 'intel core i5';
end;

function TInspiron.BuscarTamanhoHD: String;
begin
  result := '1TB';
end;


end.
