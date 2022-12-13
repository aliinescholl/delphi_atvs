unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TFrmPrincipal = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    edtNovaTarefa: TEdit;
    btnAdicionar: TButton;
    ListView1: TListView;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListView1DeleteItem(Sender: TObject; AIndex: Integer);
  private
    { Private declarations }
    const data = 'DATA';
    procedure AtualizarListaDevice;
    procedure AdicionarItem(const aNovaTarefa: String);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses
  SharedPreference,
  json;

procedure TFrmPrincipal.AdicionarItem(const aNovaTarefa: String);
var
  xItem :TListViewItem;
begin
  xItem := ListView1.Items.Add;
  xItem.text := aNovaTarefa;

  Self.AtualizarListaDevice;
end;

procedure TFrmPrincipal.AtualizarListaDevice;
var
  xObjeto : TJsonObject;
  i: Integer;
begin
  xObjeto := TJsonObject.Create;
  try
    for i := 0 to Pred(ListView1.ItemCount) do
    begin
      xObjeto.AddPair('item', ListView1.Items[i].Text);
    end;
      xObjeto.Free;
  finally
  end;
end;

procedure TFrmPrincipal.btnAdicionarClick(Sender: TObject);
begin
  Self.AdicionarItem(edtNovaTarefa.Text);
  edtNovaTarefa.Text := '';
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
var
  xObjeto, xSubObjeto : TJsonObject;
  xJsArray            : TJsonArray;
  xJsValue            : TJsonValue;
  j, i                : Integer;
begin
  xObjeto := TJSonObject.ParseJSONValue(GetPropertiesDispositivo(Data)) 
  as TJsonObject;

  if Assigned(xObjeto) then
  begin
    ListView1.Items.Clear;
    for j := 0 to xObjeto.Size -1 do
    begin
      xJsValue := xObjeto.Get(j).JsonValue;
      self.AdicionarItem(xJsValue.Value);
    end;
  end;
end;

procedure TFrmPrincipal.ListView1DeleteItem(Sender: TObject; AIndex: Integer);
begin
  Self.AtualizarListaDevice;
end;

end.
