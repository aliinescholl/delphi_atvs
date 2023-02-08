program Arquivos;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.OctetStream,
  System.Classes,
  System.SysUtils;

begin
  THorse.Use(OctetStream);

  THorse.Get('/arquivos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LStream: TFileStream;
    begin
      LStream := TFileStream.Create(ExtractFilePath(ParamStr(0)) +
        'Instalando o Horse e o Wizard.pdf', fmOpenRead);
      Res.Send<TStream>(LStream);
    end);


  THorse.Post('/arquivos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LStream: TMemoryStream;
    begin
      LStream := Req.Body<TMemoryStream>;
      LStream.SaveToFile(ExtractFilePath(ParamStr(0)) + 'Cópia.pdf');
      Res.Send('Arquivo enviado com sucesso...').Status(201);
    end);

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.