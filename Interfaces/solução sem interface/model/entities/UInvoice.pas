unit UInvoice;

interface

type
  TInVOice = class
    private
    FBasicPayment : Double;
    FTax : Double;
    function GetBasicPayment: Double;
    function GetTax: Double;

    procedure SetBasicPayment(const Value: Double);
    procedure SetTax(const Value: Double);

    public

    function TotalPayment : Double;
    constructor Create (const aBasicPayment, aTax: Double);

    property BasicPayment: Double read GetBasicPayment write SetBasicPayment;
    property Tax: Double          read GetTax          write SetTax;

  end;
implementation

{ TInVOice }

constructor TInVOice.Create(const aBasicPayment, aTax: Double);
begin
  FBasicPayment := aBasicPayment;
  FTax          := aTax;
end;

function TInVOice.GetBasicPayment: Double;
begin
  result := FBasicPayment;
end;

function TInVOice.GetTax: Double;
begin
  result := FTax;
end;

procedure TInVOice.SetBasicPayment(const Value: Double);
begin
  FBasicPayment := Value;
end;

procedure TInVOice.SetTax(const Value: Double);
begin
  FTax := Value;
end;

function TInVOice.TotalPayment: Double;
begin
  Result := GetBasicPayment + GetTax;
end;

end.
