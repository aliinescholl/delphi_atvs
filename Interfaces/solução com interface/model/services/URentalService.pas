unit URentalService;

interface

uses
  UBrazilTaxService, UCarRental, SysUtils, DateUtils, Math, UTaxService;

type
  TRentalService = class
    private
    FPricePerday: Double;
    FPricePerHour: Double;

    FTaxService: ITaxService;
    public
    constructor Create(const aPricePerDay, aPricePerHour: Double;
      aTaxService: ITaxService);

    destructor Destroy;override;
    procedure ProcessInvoice(aCarRental:TCarRental);
  end;

implementation

uses
  UInvoice;

{ TRentalService }

constructor TRentalService.Create(const aPricePerDay, aPricePerHour: Double;
  aTaxService: ITaxService);
begin
  FPricePerDay   := aPricePerday;
  FPricePerHour  := aPricePerHour;
  FTaxService    := aTaxService;
  end;

destructor TRentalService.Destroy;
begin
//tipos interface n�o precisa limpar da mem�ria
//o delphi � humilde e faz pra gente
//  FreeAndNil(FTaxService);
  inherited;
end;

procedure TRentalService.ProcessInvoice(aCarRental: TCarRental);
var
  xHours,
  xBasicPayment,
  xTax: Double;
begin
  xHours := DateUtils.MilliSecondsBetween(aCarRental.Finish, aCarRental.Start)
  / 1000 / 60 / 60;

  if xHours <= 12 then
    xBasicPayment := FPricePerHour * Math.Ceil(xHours)
  else
    xBasicPayment := FPricePerDay * Math.Ceil(xHours / 24);

  xTax := FTaxService.Tax(xBasicPayment);
  aCarRental.InVoice := TInVoice.Create(xBasicPayment, xTax);
end;

end.
