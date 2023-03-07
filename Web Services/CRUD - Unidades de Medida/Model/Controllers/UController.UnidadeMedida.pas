unit UController.UnidadeMedida;

interface

uses
  Horse;

type
  TControllerUnidadeMedida = class
    class procedure GetUnidadesMedida(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure GetUnidadeMedida(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure PostUnidadeMedida(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure DeleteUnidadeMedidas(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

uses
  UDAO.intf, UDAO.UnidadeMedida, System.Json, System.SysUtils;

{ TControllerUnidadeMedida }

class procedure TControllerUnidadeMedida.DeleteUnidadeMedidas(
  Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
 xDAO: IDAO;
 xId: Integer;
begin
 if (Req.Params.Count <> 1) or (not(req.Params.ContainsKey('id'))) then
 begin
   Res.Status(THTTPStatus.BadRequest);
   Exit;
 end;

 xId  := StrToIntDef(Req.Params.Items['id'], 0);
 xDAO := TDAOUnidadeMedida.Create;

 if xDAO.DeletarRegistro(xId) then
   Res.Status(THTTPStatus.NoContent)
 else
   Res.Status(THTTPStatus.InternalServerError);
end;


class procedure TControllerUnidadeMedida.GetUnidadeMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDao: IDAO;
  xId: Integer;
begin
  if (Req.Params.Count <> 1 ) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;
  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDAO := TDAOUnidadeMedida.Create;

  Res.Send<TJSONObject>(xDAO.ProcurarPorId(xId));
end;


class procedure TControllerUnidadeMedida.GetUnidadesMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
begin
  xDAO := TDAOUnidadeMedida.Create;

  res.Send<TJSONArray>(xDAO.ObterRegistro);
end;

class procedure TControllerUnidadeMedida.PostUnidadeMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
begin
  xDAO := TDAOUnidadeMedida.Create;

  if xDAO.AdicionarRegistro(Req.Body<TJSONObject>) then
    Res.Status(THTTPStatus.Created)
  else
    Res.Status(THTTPStatus.InternalServerError)
end;

end.
