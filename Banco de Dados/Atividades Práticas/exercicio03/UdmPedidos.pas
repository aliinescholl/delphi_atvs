unit UdmPedidos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TdmPedidos = class(TDataModule)
    FDConexão: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPedidos: TdmPedidos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmPedidos.DataModuleCreate(Sender: TObject);
begin
  FDConexão.Connected := True;
end;

procedure TdmPedidos.DataModuleDestroy(Sender: TObject);
begin
  FdConexão.Connected := False;
end;

end.
