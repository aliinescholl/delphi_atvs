program Project2;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  Horse.JWT;

begin
  THorse.Use(HorseJWT('key'));

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9001,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.