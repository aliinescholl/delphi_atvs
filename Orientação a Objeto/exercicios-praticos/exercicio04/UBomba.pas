unit UBomba;

interface

type
  TTipoCombustivel = (tpGasolina,tpDiesel,tpAlcool);

  TBombaCombustivel = class
  private
   FValorPorLitro : Currency;
   FTipoCombustivel : TTipoCOmbustivel;
    FQuantidadeCombustivel: Double;
    function GetQtdCombustivel: Double;
    function GetTipoCombustivel: TTipoCOmbustivel;
    function GetValorPorLitro: Currency;
    procedure SetQtdCombustivel(const Value: Double);
    procedure SetTipoCombustivel(const Value: TTipoCombustivel);
  public
   property ValorPorlitro : Currency read GetValorPorLitro;
   property TipoCombustivel : TTipoCombustivel read GetTipoCombustivel write SetTipoCombustivel;
   property QuantidadeCombustivel : Double read GetQtdCombustivel write SetQtdCombustivel;

   function AbastecerPorValor(const aValorAbastecido : Currency) : Double;
   function AbastecerPorLitro(const aLitrosAbastecidos : Double):Currency;
   function AlterarCombustivel(const aNovoCombustivel:TTipoCOmbustivel; const aNovoValor : Currency): Currency ;
   procedure AlterarQuantidadeCombustivel(const aNovaQuantidade : Double);
   procedure AlterarValorCombustivel(const aNovoValor : Currency);
   function Listar : String;
   constructor Create (const ValorPorLitro : Currency;
                       const TipoCombustivel : Integer;
      const QuantidadeCombustivel: Double = 0);
  end;

implementation

uses
  System.SysUtils;

{ BombaCombustivel }

function TBombaCombustivel.AbastecerPorLitro(const aLitrosAbastecidos : Double): Currency;
begin
  if QuantidadeCombustivel < aLitrosAbastecidos then
    raise Exception.Create('N�o h� combust�vel suficiente dispon�vel');

   if aLitrosAbastecidos <= 0 then
    raise Exception.Create('N�o � p�ss�vel abastecer valores menor que 0!');

  QuantidadeCombustivel := QuantidadeCombustivel - aLitrosAbastecidos;
  result := ALitrosAbastecidos * ValorPorLitro;
end;

function TBombaCombustivel.AbastecerPorValor(const aValorAbastecido : Currency) : Double;
begin
  result := aValorAbastecido / ValorPorLitro;
  if result <= 0 then
    raise Exception.Create('N�o � poss�vel abastecer menos que 0!');

  if result > QuantidadeCombustivel then
    raise Exception.Create('N�o h� combust�vel suficiente dispon�vel');

  QuantidadeCombustivel := QuantidadeCombustivel - result;
end;

function TBombaCombustivel.AlterarCombustivel(const aNovoCombustivel:TTipoCOmbustivel; const aNovoValor:Currency):Currency ;
begin
  FTipoCombustivel := aNovoCombustivel;
  FValorPorLitro   := aNovoValor;

  result := FValorPorLitro;
end;

procedure TBombaCombustivel.AlterarQuantidadeCombustivel(const aNovaQuantidade : Double);
begin
  QuantidadeCombustivel := aNovaQuantidade;

end;

procedure TBombaCombustivel.AlterarValorCombustivel(const aNovoValor : Currency);
begin
  FValorPorLitro := aNovoValor;
end;

constructor TBombaCombustivel.Create(const ValorPorLitro: Currency;
  const TipoCombustivel: Integer; const QuantidadeCombustivel: Double);
begin
  FValorPorLitro         := ValorPorLitro;
  FTipoCombustivel       := TTipoCOmbustivel(TipoCombustivel);
  FQuantidadeCombustivel := QuantidadeCombustivel;
end;

function TBombaCombustivel.GetQtdCombustivel: Double;
begin
  result := FQuantidadeCombustivel;
end;

function TBombaCombustivel.GetTipoCombustivel : TTipoCOmbustivel;
begin
  result := FTipoCombustivel;
end;

function TBombaCombustivel.GetValorPorLitro : Currency;
begin
  result := FValorPorLitro;
end;

function TBombaCombustivel.Listar : String;
begin
  result := 'H� ' + FormatFloat('###,#00.00', QuantidadeCombustivel) + ' litros restantes ' + SlineBreak +
            'Pre�o do Litro: ' + CurrToSTr(ValorPorlitro);
end;

procedure TBombaCombustivel.SetQtdCombustivel(const Value : Double);
begin
  FQuantidadeCombustivel := Value;
end;

procedure TBombaCombustivel.SetTipoCombustivel(const Value : TTipoCOmbustivel);
begin
  FTipoCombustivel := Value;
end;

end.
