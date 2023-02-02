unit UConcreteCommand;

interface

uses
  UCommand, UReceiver;

type
  TProcessos = class(TInterfacedObject, ICommand)
    private
     FReceiver: TReceiver;
    public
     constructor Create(aReceiver: TReceiver);
     procedure Execute;
  end;

  TProgramas = class(TInterfacedObject, ICommand)
    private
     FReceiver : TReceiver;
    public
     constructor Create(aReceiver: TReceiver);
     procedure Execute;
  end;

  TVariaveisAmbiente = class(TInterfacedObject, ICommand)
    private
     FReceiver : TReceiver;
    public
     constructor Create(aReceiver: TReceiver);
     procedure Execute;
  end;

implementation

{ TVariaveisAmbiente }

constructor TVariaveisAmbiente.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TVariaveisAmbiente.Execute;
begin
  FReceiver.ExtrairVariaveisAmbiente;
end;

{ TProcessos }

constructor TProcessos.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProcessos.Execute;
begin
  FReceiver.ExtrairProcessos;
end;

{ TProgramas }

constructor TProgramas.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProgramas.Execute;
begin
  FReceiver.ExtrairProgramas;
end;

end.
