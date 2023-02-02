unit USubject;

interface

uses
  UObserver;

type
  ISubject = interface
    procedure AdicionarObserver(aObserver: IObserver);
    procedure RemoverObserver(aObserver: IObserver);
    procedure Notificar;
  end;

implementation

end.
