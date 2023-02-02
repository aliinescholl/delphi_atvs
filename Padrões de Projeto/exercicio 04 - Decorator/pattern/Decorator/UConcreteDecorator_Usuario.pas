unit UConcreteDecorator_Usuario;

interface

uses
  UDecorator;

type
  TUsuarioDecorator = class(TDecorator)
    private
      function ObterNomeUsuario: String;
    protected
      function ObterDadosExcecao: String; Override;
  end;

implementation

uses
  System.Types, Winapi.Windows;

{ TUsuarioDecorator }

function TUsuarioDecorator.ObterDadosExcecao: String;
begin
  result := inherited ObterDadosExcecao;
  result := result + 'Usuário' + self.ObterNomeUsuario;
  end;

function TUsuarioDecorator.ObterNomeUsuario: String;
var
  xSize: DWord;
begin
  xSize := 1024;
  SetLength(result, xSize);
  GetUserName(PChar(result), xSize);
  SetLength(result, xSize -1);
end;

end.
