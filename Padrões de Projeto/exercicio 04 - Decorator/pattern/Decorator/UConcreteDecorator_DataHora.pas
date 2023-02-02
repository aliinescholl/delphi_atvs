unit UConcreteDecorator_DataHora;

interface

uses
  UDecorator;

type
  TDataHoraDecorator = class(TDecorator)
    protected
      function ObterDadosExcecao: String; override;
  end;

implementation

uses
  System.SysUtils;

{ TDataHoraDecorator }

function TDataHoraDecorator.ObterDadosExcecao: String;
begin
  result := Inherited ObterDadosExcecao;
  result := result + 'Data/Hora: ' +
    FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
end;

end.
