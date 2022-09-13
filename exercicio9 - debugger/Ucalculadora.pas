unit Ucalculadora;

interface

type
    Tcalculadora = class
    private
    public
      function RetornarSoma(const aNum1, aNum2: Integer):Integer;
  end;

implementation

function TCalculadora.RetornarSoma(const aNum1, aNum2: Integer):Integer;
begin
  Result := aNum1 + aNum2;
end;

end.
