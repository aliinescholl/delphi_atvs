unit UConcreteSubject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  USubject, System.Generics.Collections, UObserver;

type
  TFrame4 = class(TFrame, ISubject)
    BtnGravar: TButton;
    cmbOperacao: TComboBox;
    ComboBox2: TComboBox;
    edtValor: TEdit;
    DBGrid1: TDBGrid;
    Categoria: TLabel;
    Valor: TLabel;
    Label3: TLabel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Operacao: TStringField;
    ClientDataSet1Valor: TCurrencyField;
    Shape1: TShape;
    procedure BtnGravarClick(Sender: TObject);
    procedure cmbOperacaoChange(Sender: TObject);

  private
    { Private declarations }
    FObservers: TList<IObserver>;
    procedure Notificar;
    procedure CarregarCategorias;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;

    procedure AdicionarObserver(aObserver: IObserver);
    procedure RemoverObserver(aObserver: IObserver);
  end;

implementation

uses
  UNotificacao;

{$R *.dfm}

{ TFrame4 }

procedure TFrame4.AdicionarObserver(aObserver: IObserver);
begin
  FObservers.Add(aObserver);
end;

procedure TFrame4.BtnGravarClick(Sender: TObject);
begin
  ClientDataSet1.AppendRecord(
    [cmbOperacao.Text, ComboBox2.Text, StrToFloatDef(edtValor.Text, 0)]);

  Self.Notificar;
end;

procedure TFrame4.CarregarCategorias;
begin
  ComboBox2.Clear;

  case cmbOperacao.ItemIndex of
  0:
  begin
    ComboBox2.Items.Add('Salário');
    ComboBox2.Items.Add('13º');
    ComboBox2.Items.Add('Restituição do IR');
    ComboBox2.Items.Add('Freelancing');
  end;
  1:
  begin
    ComboBox2.Items.Add('Aluguel');
    ComboBox2.Items.Add('Supermercado');
    ComboBox2.Items.Add('Farmácia');
    ComboBox2.Items.Add('Escola');
    ComboBox2.Items.Add('Combustível');
    ComboBox2.Items.Add('Alimentação');
    ComboBox2.Items.Add('Roupas');
    ComboBox2.Items.Add('Viagens');
  end;
  end;
end;

procedure TFrame4.cmbOperacaoChange(Sender: TObject);
begin
  Self.CarregarCategorias;
end;

constructor TFrame4.Create(aOwner: TComponent);
begin
  inherited;
  FObservers := TList<IObserver>.Create;
end;

destructor TFrame4.Destroy;
begin
  FObservers.Free;
  inherited;
end;

procedure TFrame4.Notificar;
var
  xNotificacao : TNotificacao;
  xObserver : IObserver;
begin
  xNotificacao.Operacao  := ClientDataSet1.FieldByName('Operacao').AsString;
  xNotificacao.Categoria := ClientDataSet1.FieldByName('Categoria').AsString;
  xNotificacao.Valor     := ClientDataSet1.FieldByName('Valor').AsFloat;

  for xObserver in FObservers do
    xObserver.Atualizar(xNotificacao);

end;

procedure TFrame4.RemoverObserver(aObserver: IObserver);
begin
  FObservers.Delete(FObservers.IndexOf(aObserver));
end;

end.
