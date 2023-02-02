unit UInvoker;

interface

uses
  Classes, UCOmmand;

type
  TInvoker = class
    private
    FComandos: TInterfaceList;
    public
    constructor Create;
    procedure Add(aComando: ICommand);
    procedure ExtrairInformacoes;
  end;

implementation

{ TInvoker }

procedure TInvoker.Add(aComando: ICommand);
begin
  FComandos.Add(aComando);
end;

constructor TInvoker.Create;
begin
  FComandos := TInterfaceList.Create;
end;

procedure TInvoker.ExtrairInformacoes;
var
  xContador: Integer;
begin
  for xContador := 0 to Pred(FComandos.Count) do
    ICOmmand(FComandos[xContador]).Execute;
end;

end.
