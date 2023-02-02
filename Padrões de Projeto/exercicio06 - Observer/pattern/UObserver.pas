unit UObserver;

interface

uses
  UNotificacao;

type
  IObserver = interface
    procedure Atualizar(aNotificado: TNotificacao);
  end;

implementation

end.
