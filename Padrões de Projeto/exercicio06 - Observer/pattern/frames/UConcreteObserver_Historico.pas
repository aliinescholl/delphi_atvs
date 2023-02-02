unit UConcreteObserver_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, UNotificacao, UObserver;

type
  TFrame3 = class(TFrame, IObserver)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Total: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TFrame3 }

procedure TFrame3.Atualizar(aNotificacao: TNotificacao);
begin
  if aNotificacao.Operacao = 'Crédito' then
    Exit;
  if ClientDataSet1.Locate('Categoria', aNotificacao.Categoria, []) then
  begin
    ClientDataSet1.Edit;

    ClientDataSet1.FieldByName('Total').AsFloat :=
      ClientDataSet1.FieldByName('Total').AsFloat + aNotificacao.Valor;
    ClientDataSet1.Post;

    Exit;
  end;
  CLientDataSet1.AppendRecord([aNotificacao.Categoria, aNotificacao.Valor]);
end;

end.
