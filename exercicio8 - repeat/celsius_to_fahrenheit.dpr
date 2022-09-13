program celsius_to_fahrenheit;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xCelsius: Integer;
  xFahrenheit: Double;
  xResp: String;

begin
  try
    repeat
      WriteLn('Digite a temperatura em  graus Celsius: ');
      ReadLn(xCelsius);

      xFahrenheit := 9 * xCelsius / 5 + 32;

      WriteLn('Equivalente a ' + FloatToStr(xFahrenheit) + ' graus Fahrenheit' +
              #13#10 + '======================================');

      WriteLn ('Gostaria de tentar outro valor? (s/n)');
      ReadLn(xResp)

    until (xResp = 'n');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
