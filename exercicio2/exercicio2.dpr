program exercicio2;

uses
  System.SysUtils;

var
  xEntrada:String;
  xMeuNome:String;
  xMinhaIdade:Byte;
  xCasado:Boolean;
  xCotacaoDolar: Currency;

begin
  try
    xMeuNome :=     'Aline';
    xMinhaIdade:=   18;
    xCasado:=       False;
    xCotacaoDolar:= 5.50;

    WriteLn('Meu nome �: ' + xMeunome);
    WriteLn('Minha idade �: ' + IntToStr(xMinhaIdade));
    WriteLn('Sou Casado: ' + BoolToStr(xCasado));
    WriteLn('A cota��o do D�lar �: ' + FloatToStr(xCotacaoDolar));

    ReadLn(xEntrada);

  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;
end.
