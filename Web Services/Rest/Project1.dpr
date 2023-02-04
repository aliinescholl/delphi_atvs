program Project1;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils;

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

   THorse.Get('/helloworld',
     procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
     begin
       Res.Send('Hello World +Devs2Blu');
     end);

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.