unit UTipoPrazo;

interface

type
  ITipoPrazo = interface
    ['{BFC95F90-7F5F-4043-A583-038574CCABD0}']
    function ConsultarDescricao: String;
    function ConsultarJuros: String;
    function ConsultarProjecao(const aValor: Real;
      const aQtdParcelas: Integer): String;
    function ConsultarTotal: String;
  end;

  IFactoryMethod = interface
    ['{F2D0F705-F766-4187-B341-68F2351170E1}']
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;

implementation

end.
