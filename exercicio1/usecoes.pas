unit Usecoes;

interface

uses
  Uanimal;

type
  Tregistro = record
    id : integer;
    data: Tdate;
    hora: Ttime;
    obse: string;
  end;

  Tcachorro = class (Tanimal)
    procedure MeuSomEh; override;
  end;

var
  interfacegloball:integer;

  implementation

uses
  vcl.dialogs;

procedure Tcachorro.MeuSomEh;
begin
  ShowMessage('Au Au!');
end;

end.
