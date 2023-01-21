program SolucaoSemInterface;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UVehicle in 'model\entities\UVehicle.pas',
  UInvoice in 'model\entities\UInvoice.pas',
  UCarRental in 'model\entities\UCarRental.pas',
  UBrazilTaxService in 'model\services\UBrazilTaxService.pas',
  URentalService in 'model\services\URentalService.pas';

var
  xCarModel,
  xStrStart,
  xStrFinish,
  xStrPicePerHour,
  xStrPricePerDay: String;
  xStart,
  xFinish: TDateTime;
  xCarRental :TCarRental;
  xPricePerHour,
  xPricePerDay : Double;
  xRentalService : TRentalService;
begin
  try
    Writeln('Entre com os ddos do aluguel');
    Writeln('Modelo do carro: ');
    ReadLn(xCarModel);

    Writeln('Retirada (dd/mm/yyyy hh:mm):');
    ReadLn(xStrStart);
    xStart := StrToDateTime(xStrStart);

    WriteLn('Retorno(dd/mm/yyy hh:mm): ');
    Readln(xStrFinish);
    xFinish := StrToDateTime(xStrFinish);

    xCarRental := TcarRental.Create(xStart, xFinish, TVehicle.Create(CarModel));

    WriteLn('Entre com o pre�o por hora: ');
    ReadLn(xStrPicePerHour);
    xPricePerHour := STrT
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
