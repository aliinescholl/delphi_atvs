unit UVostro;

interface

uses
  UInterface;

type
  TVostro = class (TInterfacedObject, INotebook)
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRAM: String;
  end;

implementation

{ TVostro }

function TVostro.BuscarMemoriaRAM: String;
begin
  result := '3gb ram ddr3';
end;

function TVostro.BuscarTamanhoTela: String;
begin
  result := '14 polegadas';
end;

end.
