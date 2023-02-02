unit UPrazoAnual;

interface

uses
  UTipoPrazo;

type
  TPrazoAnual = class(TInterfacedObject, ITipoPrazo)
    private
    FValorTotal: Real;
    public
    function ConsultarDescricao: String;
    function ConsultarJuros: String;
    function ConsultarProjecao(const aValor: Real;
      const aQtdParcelas: Integer): String;
    function ConsultarTotal: String;
  end;

implementation

uses
  System.Classes, System.SysUtils;

{ TPrazoAnual }

function TPrazoAnual.ConsultarDescricao: String;
begin
  result := 'Prazo Anual para pagamento'
end;

function TPrazoAnual.ConsultarJuros: String;
begin
  result := 'Juros de 10,5% simples ao ano' + SLineBreak;
end;

function TPrazoAnual.ConsultarProjecao(const aValor: Real;
  const aQtdParcelas: Integer): String;
var
  xProjecao : TStringList;
  xContador : smallInt;
  xValorAjustado: real;
  xDataParcela: TDateTime;
begin
  xValorAjustado := aValor;
  xdataParcela   := Date;
  xProjecao      := TStringList.Create;
  try
    for xContador := 1 to aQtdParcelas do
    begin
      xValorAjustado := xValorAjustado + (aValor * 0.105);
      xDataParcela   := IncMonth(xDataParcela, 12);

      xProjecao.Add(Format('Parcela %.2d (%s: %m)',
        [xContador, DateToStr(xDataParcela), xValorAjustado]));

      FValorTotal := FValorTotal + xValorAjustado;
    end;
    result := xProjecao.Text;
  finally
    FreeAndNil(xProjecao);
  end;
end;

function TPrazoAnual.ConsultarTotal: String;
begin
  result := 'Total: ' + FormatFloat ('###,##0.00', FValorTotal);
end;

end.
