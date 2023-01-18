unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    btnAdd: TButton;
    btnOnNotify: TButton;
    btnListar: TButton;
    btnCount: TButton;
    btnCapacity: TButton;
    btnRemove: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure btnAddClick(Sender: TObject);
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOnNotifyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  FListaNum: TList<Integer>;
  procedure Notificacao (Sender:TObject; const aItem: Integer;
  aAction : TCollectionNotification);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnAddClick(Sender: TObject);
begin
  FListaNum.Add(StrToIntDef(edit1.Text, 0));
end;

procedure TForm1.btnCapacityClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FListaNum.Capacity.ToString);
end;

procedure TForm1.btnCountClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FListaNum.Count.ToString);
end;

procedure TForm1.btnListarClick(Sender: TObject);
var
  i : Integer;
begin
  Memo1.Lines.Clear;
  for i := 0 to Pred(FListaNum.Count) do
    memo1.Lines.Add(FListaNum[i].ToString);
end;

procedure TForm1.btnOnNotifyClick(Sender: TObject);
begin
  FListaNUm.OnNotify := Notificacao;
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
begin
  FListaNum.Delete(Pred(FListaNum.Count));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FListaNUm.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FListaNum := TList<Integer>.Create;
end;

procedure TForm1.Notificacao(Sender: TObject; const aItem: Integer;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdding: ;
    cnAdded: memo1.Lines.Add('O item ' + aItem.ToString + ' foi adicionado');
    cnExtracting: ;
    cnExtracted: ;
    cnDeleting: ;
    cnRemoved: memo1.Lines.Add('O item ' + aItem.ToString + ' foi removido');
  end;
end;

end.