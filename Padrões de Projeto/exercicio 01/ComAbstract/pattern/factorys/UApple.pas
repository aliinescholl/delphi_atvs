unit UApple;

interface

uses UInterface;

type
  TApple = class(TInterfacedObject, IFactoryMarca)
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop : IDesktop;
  end;

implementation

uses
  UIMac, UMacBook;

{ TApple }

function TApple.ConsultarDesktop: IDesktop;
begin
  result := TIMac.Create;
end;

function TApple.ConsultarNotebook: INotebook;
begin
  result := TMacBook.Create;
end;

end.
