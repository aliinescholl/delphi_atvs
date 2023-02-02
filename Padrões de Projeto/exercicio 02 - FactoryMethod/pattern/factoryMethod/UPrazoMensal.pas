unit UPrazoMensal;

interface

uses
  UTipoPrazo;

type
  TPrazoMensal = class(TInterfacedObject, ITipoPrazo)
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
{ TPrazoMensal }

function TPrazoMensal.ConsultarDescricao: String;
begin
  result := 'Prazo mensal para pagamento';
end;

function TPrazoMensal.ConsultarJuros: String;
begin
  result := 'Juros de 3,1% simples ao m�s'
end;

function TPrazoMensal.ConsultarProjecao(const aValor: Real;
  const aQtdParcelas: Integer): String;
var
  xProjecao: TStringList;
  xContador: SmallInt;
  xValorAjustado: Real;
  xDataParcela: TDateTime;
begin
  xValorAjustado := aValor;
  xDataParcela   := Date;
  xProjecao      := TStringList.Create;
  try
    for xContador := 1 to aQtdParcelas do
    begin
      xValorAjustado := xValorAJustado +(aValor * 0.031);
      xDataParcela   := IncMonth(xDataParcela, 1);

      FValorTotal := FValorTotal + xValorAjustado;
    end;
      result := xProjecao.Text;
  finally
      FreeAndNil(xProjecao);
  end;
end;

function TPrazoMensal.ConsultarTotal: String;
begin
  result := 'Total: ' + FormatFloat('###,##0.00', FValorTotal)
end;

end.
