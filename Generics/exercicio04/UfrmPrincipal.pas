unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TUtils = class
    class function IIF<T>(const aCondicao:Boolean; const aTipo1, aTipo2: T):T;
  end;

  TProduto = class
    private
    FDescricao:String;
    procedure SetDescricao(const VAlue:String);

    published
    constructor Create;
    property Descricao: String read Fdescricao write SetDescricao;
  end;

  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TUtils }

class function TUtils.IIF<T>(const aCondicao: Boolean; const aTipo1,
  aTipo2: T): T;
begin
  if aCOndicao then
    Result := aTipo1
  else
    Result := aTipo2
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xAux:String;
begin
  xAux := TUtils.IIF<String>(Edit1.Text <> EmptyStr,Edit1.Text, 'Laranja');

  Showmessage(xAux);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  xProduto1,
  xProduto2,
  xProduto3: TProduto;
begin
  xProduto2 := nil;

  xProduto1 := TProduto.Create;
  xProduto1.Descricao := 'Laranja Pera';

  xProduto3 := TUtils.IIF<TProduto>(Assigned(xProduto1), xProduto1, TProduto.Create);

  ShowMessage(xProduto3.Descricao);
end;

{ TProduto }

constructor TProduto.Create;
begin
  FDescricao := 'Produto Gen�rico';
end;

procedure TProduto.SetDescricao(const VAlue: String);
begin
  FDescricao := Value;
end;

end.