unit UfrmCompradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask;

type
  TFrmCompradores = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    FDTable: TFDTable;
    FDTableId: TFDAutoIncField;
    FDTableNome: TStringField;
    FDTableCargo: TStringField;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompradores: TFrmCompradores;

implementation

{$R *.dfm}

uses UdmPedidos;



procedure TFrmCompradores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
  FDtable.close;

  Form1 := nil;
end;

procedure TFrmCompradores.FormCreate(Sender: TObject);
begin
  FDTable.open;
end;

end.
