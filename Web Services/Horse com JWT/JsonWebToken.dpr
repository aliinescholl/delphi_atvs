program JsonWebToken;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  JOSE.Core.JWT,
  JOSE.Core.Builder;

begin
  THorse.Get('/login',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
     LToken: TJWT;
     LCompactToken: String;
    begin
      LToken:= TJWT.Create;
      try
        LToken.Claims.Issuer     := 'DevsToBlu';
        LToken.Claims.Subject    := '123456';
        LToken.Claims.Expiration := Now + 1;

        LToken.Claims.SetClaimOfType<String>('nome', 'aline');

        //Signing and Compact format Creation
        LCompactToken := TJOSE.SHA256CompactToken('key', LToken);

        Res.Send(LCompactToken);
      finally
        LToken.Free;
      end;
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.