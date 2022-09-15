program cadastro_cliente;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, Winapi.Windows;

type
  TRegCliente = record
    Codigo : Integer;
    Nome :  String;
    Idade : Byte;
  end;
  TListaCliente = array of TregCliente;
var
  resp : Integer;
  xContinuar : Integer;
  xCliente : TregCliente;
  XListaCliente : TListaCliente;

procedure ClearScreen;
var
  stdout: THandle;
  csbi: TConsoleScreenBufferInfo;
  ConsoleSize: DWORD;
  NumWritten: DWORD;
  Origin: TCoord;
begin
  stdout := GetStdHandle(STD_OUTPUT_HANDLE);
  Win32Check(stdout<>INVALID_HANDLE_VALUE);
  Win32Check(GetConsoleScreenBufferInfo(stdout, csbi));
  ConsoleSize := csbi.dwSize.X * csbi.dwSize.Y;
  Origin.X := 0;
  Origin.Y := 0;
  Win32Check(FillConsoleOutputCharacter(stdout, ' ', ConsoleSize, Origin,
    NumWritten));
  Win32Check(FillConsoleOutputAttribute(stdout, csbi.wAttributes, ConsoleSize, Origin,
    NumWritten));
  Win32Check(SetConsoleCursorPosition(stdout, Origin));
end;

procedure AddCliente(const ARegCliente : TregCliente);
  begin
    SetLength(xListaCliente, Length(xListaCliente) + 1 );
    XListaCliente[Length(xListaCliente) - 1] := ARegCliente;
  end;
procedure Listar_Clientes;
var
  I : Integer;
  XregCliente : TRegCliente;
begin
  WriteLn('Listando');
  for i := 0 to length(xListaCliente)-1 do
  begin
    XRegCLiente := XListaCliente[i];

    WriteLn('Código: ' + xRegCliente.Codigo.ToString);
    WriteLn('Nome: ' + xRegCLiente.Nome);
    WriteLn('Idade: ' + xRegCliente.Idade.ToString);
    WriteLn(SLineBreak);
  end;

end;
  begin
  try
    repeat
      writeLn('Código do Cliente: ');
      ReadLn(xCliente.Codigo);

      writeLn('Nome Do Cliente: ');
      ReadLn(xCliente.Nome);

      WriteLn('Idade do Cliente: ');
      ReadLn(xCliente.Idade);

      AddCliente(xCliente);

      WriteLn('Deseja Cadastrar mais clientes? 1-s/2-n');
      ReadLn(xContinuar);
    until xContinuar = 2;
    ClearScreen;
    Listar_Clientes;
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
