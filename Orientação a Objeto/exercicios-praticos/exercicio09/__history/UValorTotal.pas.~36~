unit UValorTotal;

interface

type
//  TDesconto = (opSemDesconto, op10Desconto, op25Desconto);
  TPedido   = class
    private
    FNomeProduto : String;
    Fquantidade  : Integer;
    FPreco       : Double;
    FValorTotal  : Double;

    function getNomeProduto: String;
    function getquantidade: Integer;
    function GetPreco: Double;

    procedure setNomeProduto(const Value: String);
    procedure Setquantidade(const Value: Integer);
    procedure SetPreco(const Value: Double);

    public

    property NomeProduto: String  read getNomeProduto write setNomeProduto;
    property Quantidade: Integer  read getquantidade  write Setquantidade;
    property Preco: Double        read GetPreco       write SetPreco;

    function CalcularValorTotal(aQuantidade:Integer;
                                aPreco:Double):Double;
  end;

implementation

{ TDesconto }

function TPedido.CalcularValorTotal(aQuantidade: Integer;
  aPreco: Double): Double;
var
  xDesconto, xResultado : Double;

begin
  Quantidade := aQuantidade;
  Preco      := aPreco;

  if Quantidade <= 10 then
    xDesconto := 0

  else if (Quantidade >= 11)  and (Quantidade <= 49) then
    xDesconto := 0.1

  else if Quantidade >= 50 then
    xDesconto := 0.25;

  xResultado := Quantidade * Preco;
  xDesconto  := xResultado - (xResultado * xDesconto);

  result := xDesconto;
end;

function TPedido.getNomeProduto: String;
begin
  result := FNomeProduto;
end;

function TPedido.GetPreco: Double;
begin
  result := FPreco;
end;

function TPedido.getquantidade: Integer;
begin
  result := FQuantidade;
end;

function TPedido.GetValorTotal: Double;
begin
  result := FValorTotal;
end;

procedure TPedido.setNomeProduto(const Value: String);
begin
  FNomeProduto := Value;
end;

procedure TPedido.SetPreco(const Value: Double);
begin
  FPreco := Value;
end;

procedure TPedido.Setquantidade(const Value: Integer);
begin
  FQuantidade := Value;
end;

procedure TPedido.SetValorTotal(const Value: Double);
begin
  FValorTotal := Value;
end;

end.
