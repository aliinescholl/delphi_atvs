unit UBomba;

interface

type
  TTipoCombustivel = (tpGasolina,tpDiesel,tpAlcool);
  
  TBombaCombustivel = class
  private
   FValorPorLitro : Currency;
   FTipoCombustivel : TTipoCOmbustivel;
   FQuantidadeCombustivel : Double;
    function GetQtdCombustivel: Double;
    function GetTipoCombustivel: TTipoCOmbustivel;
    function GetValorPorLitro: Currency;
    procedure SetQtdCombustivel(const Value: Double);
    procedure SetTipoCombustivel(const Value: TTipoCOmbustivel);
  public
   property ValorPorlitro : Currency read GetValorPorLitro;
   property TipoCombustivel : TTipoCombustivel read GetTipoCombustivel write SetTipoCombustivel;
   property QuantidadeCombustivel : Double read GetQtdCombustivel write SetQtdCombustivel;

   function AbastecerPorValor(const aValorAbastecido : Currency) : Double;
   function AbastecerPorLitro(const aLitrosAbastecidos : Double):Currency;
   procedure AlterarValorCombustivel(const aNovoValor : Currency);
   function AlterarCombustivel(const aNovoCombustivel:TTipoCOmbustivel; const aNovoValor : Currency): Currency ;
   procedure AlterarQuantidadeCombustivel(const aNovaQuantidade : Double);

   constructor Create (const ValorPorLitro: Currency;
  const TipoCombustivel: Integer; const QuantidadeCombustivel: Double = 0);
   end;

implementation

uses
  System.SysUtils;

{ BombaCombustivel }

function TBombaCombustivel.AbastecerPorLitro(const aLitrosAbastecidos : Double): Currency;
begin
  if QuantidadeCombustivel < aLitrosAbastecidos then
    raise Exception.Create('N�o h� combust�vel suficiente dispon�vel');
    
  QuantidadeCombustivel := QuantidadeCombustivel - aLitrosAbastecidos;
  result := ALitrosAbastecidos * ValorPorLitro;
end;

function TBombaCombustivel.AbastecerPorValor(const aValorAbastecido : Currency) : Double;
begin
  result := aValorAbastecido / ValorPorLitro;

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

function TBombaCombustivel.GetTipoCombustivel: TTipoCOmbustivel;
begin
  result := FTipoCombustivel;
end;

function TBombaCombustivel.GetValorPorLitro: Currency;
begin
  result := FValorPorLitro;
end;

procedure TBombaCombustivel.SetQtdCombustivel(const Value: Double);
begin
  FQuantidadeCombustivel := Value;
end;

procedure TBombaCombustivel.SetTipoCombustivel(const Value: TTipoCOmbustivel);
begin
  FTipoCombustivel := Value;
end;

end.
