program Calculadora;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UICalculadora in 'patterns\UICalculadora.pas',
  UCalculadora in 'UCalculadora.pas',
  UTestarParametros in 'UTestarParametros.pas';

begin
  //Somar
THorse.Get('/somar/:valor1/:valor2',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    xValor1,
    xValor2: Double;
    xCalculadora: ICalculadora;
    xResultado: Double;
  begin
    if Req.Params.Count <> 2 then
    begin
      Res.Send('Par�metros Incorretos!');
      Exit;
    end;

    if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
    begin
      Res.Send('Valor 1 Incorreto!');
      Exit;
    end;

    if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
    begin
      Res.Send('Valor 2 Incorreto!');
      Exit;
    end;

    xCalculadora := TCalculadora.Create;
    xResultado   := xCalculadora.Somar(xValor1, xValor2);

    Res.Send('Soma: ' + xResultado.ToString);

  end);

THorse.Get('/subtrair/:valor1/:valor2',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    xValor1,
    xValor2: Double;
    xCalculadora: ICalculadora;
    xResultado: Double;
  begin
    if Req.Params.Count <> 2 then
    begin
      Res.Send('Par�metros Incorretos!');
      Exit;
    end;

    if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
    begin
      Res.Send('Valor 1 Incorreto!');
      Exit;
    end;

    if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
    begin
      Res.Send('Valor 2 Incorreto!');
      Exit;
    end;

    xCalculadora := TCalculadora.Create;
    xResultado   := xCalculadora.Subtrair(xValor1, xValor2);

    Res.Send('Resultado: ' + xResultado.ToString);

  end);

THorse.Get('/dividir/:valor1/:valor2',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    xValor1,
    xValor2: Double;
    xCalculadora: ICalculadora;
    xResultado: Double;
  begin
    if Req.Params.Count <> 2 then
    begin
      Res.Send('Par�metros Incorretos!');
      Exit;
    end;

    if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
    begin
      Res.Send('Valor 1 Incorreto!');
      Exit;
    end;

    if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
    begin
      Res.Send('Valor 2 Incorreto!');
      Exit;
    end;

    xCalculadora := TCalculadora.Create;
    xResultado   := xCalculadora.Dividir(xValor1, xValor2);

    Res.Send('Resultado: ' + xResultado.ToString);

  end);

THorse.Get('/multiplicar/:valor1/:valor2',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    xValor1,
    xValor2: Double;
    xCalculadora: ICalculadora;
    xResultado: Double;
  begin
    if Req.Params.Count <> 2 then
    begin
      Res.Send('Par�metros Incorretos!');
      Exit;
    end;

    if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
    begin
      Res.Send('Valor 1 Incorreto!');
      Exit;
    end;

    if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
    begin
      Res.Send('Valor 2 Incorreto!');
      Exit;
    end;

    xCalculadora := TCalculadora.Create;
    xResultado   := xCalculadora.multiplicar(xValor1, xValor2);

    Res.Send('Resultado: ' + xResultado.ToString);

  end);


  THorse.Listen(9090,
procedure(Horse: THorse)
  begin
    Writeln('Server est� rodando na porta: ' + IntToStr(Horse.Port));
  end);
end.