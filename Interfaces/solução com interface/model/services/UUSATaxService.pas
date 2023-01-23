unit UUSATaxService;

interface

uses
  UTaxService;

type
  TUSATaxService = class(TInterfacedObject, ITaxService)
    private
    public
      function Tax(const aAmount:Double):Double;
  end;

implementation

{ TUSATaxService }

function TUSATaxService.Tax(const aAmount: Double): Double;
begin
  if (aAmount <=100) then
    result:= aAmount*0.3
  else
    result := aAmount * 0.20;
end;

end.
