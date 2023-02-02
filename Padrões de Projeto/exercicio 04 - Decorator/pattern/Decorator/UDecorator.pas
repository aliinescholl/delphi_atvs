unit UDecorator;

interface

uses
  UInterfaceComponent;

type
  TDecorator = class(TInterfacedObject, ILOgExcecao)
    protected
      FLogExcecao: ILogExcecao;

      function ObterDadosExcecao: String; virtual;
    public
      constructor Create(aLogExcecao: ILogExcecao);
  end;

implementation

{ TDecorator }

constructor TDecorator.Create(aLogExcecao: ILogExcecao);
begin
  FLogExcecao := aLogExcecao;
end;

function TDecorator.ObterDadosExcecao: String;
begin
  result := FLogExcecao.ObterDadosExcecao;
  result := result + #13#10;
end;

end.
