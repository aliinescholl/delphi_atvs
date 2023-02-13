program ProjRetornandoDados;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Query,
  Horse.Jhonson,
  Firedac.comp.Client,
  Firedac.DApt,
  Firedac.Stan.Def,
  FireDac.Stan.Async,
  Data.DB,
  System.SysUtils,
  URetornandoDados in '..\RetornandoDados\URetornandoDados.pas';

begin
   THorse.Use(Jhonson);
   THorse.Use(Query);

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xMemTable: TFDMemTable;
    begin
      xMemTable := TFDMemTable.Create(nil);
      xMemTable.FieldDefs.Add('Codigo', ftInteger, 0, False);
      xMemTable.FieldDefs.Add('Nome', ftString, 100, False);

      xMemTable.LogChanges    := False;
      xMemTable.CachedUpdates := True;

      xMemTable.Close;
      xMemTable.CreateDataSet;
      xMemTable.Open;

      xMemTable.AppendRecord([1, 'Ping']);
      xMemTable.AppendRecord([2, 'Pong']);
      xMemTable.ApplyUpdates;

      Res.Send<TFDMemTable>(xMemTable);
    end);

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.