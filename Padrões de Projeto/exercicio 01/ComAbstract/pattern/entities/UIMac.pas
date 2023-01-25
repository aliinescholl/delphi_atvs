unit UIMac;

interface

uses
  UInterface;

type
  TIMac = class(TInterfacedObject, IDesktop)
    function BuscarNomeProcessador:String;
    function BuscarTamanhoHD: String;
  end;

implementation

{ TIMac }

function TIMac.BuscarNomeProcessador: String;
begin
    result := 'Intel Core i7'
end;

function TIMac.BuscarTamanhoHD: String;
begin
    result := '500 GB'
end;

end.
