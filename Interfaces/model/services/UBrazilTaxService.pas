unit UBrazilTaxService;

interface

type
  TBrazilTaxService = class
    private
    public
    function Tax(const aMount:Double):Double;
  end;

implementation

{ TBrazilTaxService }

function TBrazilTaxService.Tax(const aMount: Double): Double;
begin
  if (aMount <=100) then
    result:= aMount*0.2
  else
    result := aMount * 0.15;
end;

end.
