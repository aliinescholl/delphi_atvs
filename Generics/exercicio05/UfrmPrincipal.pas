unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoa = class
    private
    FNome: String;
    procedure SetNome(const Value:String);

    published
    property Nome:String read Fnome write SetNome;
  end;

  tNfe<T:Constructor> = class
    FGeneric: T;
    constructor Create;
    function GetGeneric:T;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ tNfe<T> }

constructor tNfe<T>.Create;
begin
  FGeneric := T.Create;
end;

function tNfe<T>.GetGeneric: T;
begin
  Result := FGeneric;
end;

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xNfe: TNfe<TPessoa>;
begin
  xNfe := TNfe<TPessoa>.Create;

  try
    xNfe.FGeneric.Nome := 'Aline';
    ShowMessage(xNfe.FGeneric.Nome);
  finally
    FreeAndNil(xNfe);
  end;
end;

end.