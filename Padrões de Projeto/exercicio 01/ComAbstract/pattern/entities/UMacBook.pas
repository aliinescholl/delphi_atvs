unit UMacBook;

interface

uses
  UInterface;

type
  TMacBook = class (TInterfacedObject, INotebook)
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRAM: String;
  end;

implementation

{ TMacBook }

function TMacBook.BuscarMemoriaRAM: String;
begin
  result := '4gb ram  ddr4';
end;

function TMacBook.BuscarTamanhoTela: String;
begin
  result := '11.6 polegadas';
end;

end.
