program deposito;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xSaldo, xSangria: Currency;
  xContinuar: Byte;
begin
  try
    WriteLn('Retirado na conta');
    WriteLn('Entre com seu saldo: ');
    ReadLn(xSaldo);

    while xSaldo > 0 do
    begin
      WriteLn('Qual será o valor da sua retirada: ');
      ReadLn(xSangria);

      xSaldo:= xSaldo- xSangria;

      WriteLn('Deseja continuar?' + #13#10 + '1 - Sim' +
               #13#10 + '2 - Não' );
      ReadLn(xContinuar);
      WriteLn('Seu saldo atual é: ' + FloatToStr(xSaldo));
      if xContinuar <> 1 then
      break;
    end;

    WriteLn('Seu saldo atual é: ' + FloatToStr(xSaldo));
    ReadLn;

    { TODO -oUser -cConsole Main : Insert code here }

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);

  end;
end.
