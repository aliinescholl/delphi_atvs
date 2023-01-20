unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TPessoa = record
    CPF: String;
    Nome: String;
  end;

  Taa = class(TForm)
    edtcpf: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    btnAdd: TButton;
    btnRemove: TButton;
    btnTryGetValue: TButton;
    BtnTrimExcess: TButton;
    btnClear: TButton;
    btnListaValue: TButton;
    btnListaKey: TButton;
    btnAddOrSetValue: TButton;
    btnContainsKey: TButton;
    btnOnKeyNotify: TButton;
    btnOnValueNotify: TButton;
    Label1: TLabel;
    NOME: TLabel;
    procedure btnClearClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAddOrSetValueClick(Sender: TObject);
    procedure btnContainsKeyClick(Sender: TObject);
    procedure btnListaKeyClick(Sender: TObject);
    procedure btnListaValueClick(Sender: TObject);
    procedure btnOnKeyNotifyClick(Sender: TObject);
    procedure btnOnValueNotifyClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure BtnTrimExcessClick(Sender: TObject);
    procedure btnTryGetValueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FDicionario : TDictionary <String, TPessoa>;

    procedure KeyNotify(Sender:TObject; const aItem: String;
      aAction:TCollectionNotification);
    procedure ValueNotify(Sender: TObject; const aItem: TPessoa;
      aAction: TCollectionNotification);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  aa: Taa;

implementation

{$R *.dfm}

procedure Taa.btnAddClick(Sender: TObject);
var
  xPessoa : TPessoa;
begin
  xPessoa.CPF := edtcpf.Text;
  xPessoa.Nome:= Edit2.text;

  FDicionario.Add(xPessoa.CPF, xPessoa)
end;

procedure Taa.btnAddOrSetValueClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  xPessoa.CPF := edtcpf.Text;
  xPessoa.Nome:= Edit2.Text;

  FDicionario.AddOrSetValue(xPessoa.CPF, xPessoa);
end;

procedure Taa.btnClearClick(Sender: TObject);
begin
  memo1.Lines.Clear;
end;

procedure Taa.btnContainsKeyClick(Sender: TObject);
begin
  if FDicionario.ContainsKey(edtcpf.Text) then
    memo1.Lines.Add('Usu�rio encontrado')
  else
    memo1.Lines.Add('Usu�rio n�o encontrado')
end;

procedure Taa.btnListaKeyClick(Sender: TObject);
var
  xKey : String;
begin
  for xKey in FDicionario.Keys do
    memo1.Lines.Add(xKey)
end;

procedure Taa.btnListaValueClick(Sender: TObject);
var
  xValue: TPessoa;
begin
  for xValue in FDIcionario.Values do
    memo1.Lines.Add(xValue.Nome)
end;

procedure Taa.btnOnKeyNotifyClick(Sender: TObject);
begin
  FDicionario.OnKeyNotify := KeyNotify;
end;

procedure Taa.btnOnValueNotifyClick(Sender: TObject);
begin
  FDicionario.OnValueNotify := ValueNotify;
end;

procedure Taa.btnRemoveClick(Sender: TObject);
begin
  FDicionario.Remove(edtcpf.Text);
end;

procedure Taa.BtnTrimExcessClick(Sender: TObject);
begin
  FDicionario.TrimExcess;
end;

procedure Taa.btnTryGetValueClick(Sender: TObject);
var
  xPessoa : TPessoa;
begin
  if FDicionario.TryGetValue(edtcpf.Text, xPessoa) then
    memo1.Lines.Add(xPessoa.Nome + ' - ' + xPessoa.CPF)
  else
    Memo1.Lines.Add('Usu�rio n�o encontrado')
end;

procedure Taa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDicionario.Free;
end;

procedure Taa.FormCreate(Sender: TObject);
begin
  FDicionario := TDictionary<String, TPessoa>.Create;
end;

procedure Taa.KeyNotify(Sender: TObject; const aItem: String;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdding: ;
    cnAdded:
      memo1.Lines.Add('A Chave ' + aItem + ' foi adicionada');
    cnExtracting: ;
    cnExtracted:
      memo1.Lines.Add('A Chave ' + aItem + ' foi extraida');
    cnDeleting: ;
    cnRemoved:
      memo1.Lines.Add('A Chave ' + aItem + ' foi removida');
  end;
end;

procedure Taa.ValueNotify(Sender: TObject; const aItem: TPessoa;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdding: ;
    cnAdded:
      memo1.Lines.Add('O Value ' + aItem.Nome + ' foi adicionado');
    cnExtracting: ;
    cnExtracted:
      memo1.Lines.Add('O Value' + aItem.Nome + ' foi extraido');
    cnDeleting: ;
    cnRemoved:
      memo1.Lines.Add('O Value ' + aItem.Nome + ' foi removido');
  end;
end;

end.
