unit UReceiver;

interface

type
  TReceiver = class
    public
    procedure ExtrairProcessos;
    procedure ExtrairProgramas;
    procedure ExtrairVariaveisAmbiente;
  end;

implementation

uses
  DIalogs, Messages, Windows, TlHelp32,
  psAPI, SysUtils, Registry, Classes;

{ TReceive }

procedure TReceiver.ExtrairProcessos;
var
  xHandle: THandle;
  xProcessEntry: TProcessEntry32;
  xListaProcessos: TStringList;
begin
  //extrai a lista de processos em execucao

  xHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  xListaProcessos := TStringList.Create;
  try
    xProcessEntry.dwSize := SizeOf(TProcessEntry32);
    Process32Next(xHandle, xProcessEntry);

    repeat
      xListaProcessos.Add(xProcessEntry.szExeFile);
    until not Process32Next(xHandle, xProcessEntry);

    xListaProcessos.SaveToFile(GetCurrentDir + '\Processos.txt');
  finally
     CloseHandle(xHandle);
     FreeAndNil(xListaProcessos);
  end;
end;

procedure TReceiver.ExtrairProgramas;
const
  CHAVE_REGISTRO =
    '\Software\Microsoft\Windows\CurrentVersion\Uninstall\';
var
  xRegistro : TRegistry;
  xContador : Integer;
  xListaChaves, xListaProgramas : TStringList;
begin
  xRegistro := TRegistry.Create;
  xListaChaves := TStringList.Create;
  xListaProgramas := TStringList.Create;
  try
    xRegistro.RootKey := HKEY_LOCAL_MACHINE;
    xRegistro.OpenKey(CHAVE_REGISTRO, False);
    xRegistro.GetKeyNames(xListaChaves);
    xRegistro.CloseKey;

    for xContador := 0 to Pred(xListaChaves.Count) do
    begin
      xRegistro.RootKey := HKEY_LOCAL_MACHINE;
      xRegistro.OpenKey(CHAVE_REGISTRO +
       xListaChaves[xContador], False);

      if xRegistro.ReadString('DisplayName') <> EmptyStr then
       xListaProgramas.Add(xRegistro.ReadString('DisplayName'));

       xRegistro.CloseKey;
    end;
    xListaProgramas.SaveToFile(GetCurrentDir + '\Programas.txt');
  finally
     FreeAndNil(xRegistro);
     FreeAndNil(xListaChaves);
     FreeAndNil(xListaProgramas);
  end;
end;

procedure TReceiver.ExtrairVariaveisAmbiente;
var
  xVariavel:PChar;
  xListaVariaveis: TStringList;
begin
  xListaVariaveis := TStringList.Create;
  try
    xVariavel := GetEnvironmentStrings;

    while xVariavel^  <> #0 do
    begin
      xListaVariaveis.Add(StrPas(xVariavel));
      xListaVariaveis.Add(EmptyStr);
      Inc(xVariavel, lStrLen(xVariavel) + 1);
    end;
    FreeEnvironmentStrings(xVariavel);

    xListaVariaveis.SaveToFile(GetCurrentDir + '\Variaveis.txt')
  finally
    FreeAndNil(xListaVariaveis);
  end;
end;

end.
