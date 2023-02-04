unit UICalculadora;

interface

type
  ICalculadora = interface
    function Somar(aValor1, aValor2: Double):Double;
    function Subtrair(aValor1, aValor2: Double):Double;
    function Multiplicar(aValor1, aValor2: Double):Double;
    function Dividir(aValor1, aValor2: Double):Double;
    end;

implementation

end.
